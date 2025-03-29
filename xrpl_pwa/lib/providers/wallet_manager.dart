import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pointycastle/key_derivators/pbkdf2.dart';
import 'package:xrpl_dart/xrpl_dart.dart';
import 'package:pointycastle/api.dart';
import 'package:pointycastle/key_derivators/api.dart';
import 'package:pointycastle/random/fortuna_random.dart';
import 'dart:convert';
import 'dart:typed_data';

class WalletManager {
  static final _storage = const FlutterSecureStorage();

  static Future<void> saveWallet(String seed, String password, String address) async {
    final secureRandom = FortunaRandom()..seed(KeyParameter(Uint8List(16)));
    final salt = secureRandom.nextBytes(16);
    final iv = secureRandom.nextBytes(16);

    final pbkdf2 = PBKDF2KeyDerivator(Mac('SHA-256/HMAC'))
      ..init(Pbkdf2Parameters(Uint8List.fromList(salt), 100000, 32));
    final key = pbkdf2.process(Uint8List.fromList(utf8.encode(password)));

    final cipher = PaddedBlockCipher('AES/CBC/PKCS7')
      ..init(true, ParametersWithIV(KeyParameter(key), iv));
    final encryptedSeed = cipher.process(Uint8List.fromList(utf8.encode(seed)));

    final combined = Uint8List.fromList([...iv, ...encryptedSeed]);
    final encodedData = base64.encode(combined);

    await _storage.write(key: 'encrypted_seed', value: encodedData);
    await _storage.write(key: 'salt', value: base64.encode(salt));
    await _storage.write(key: 'address', value: address);
  }

  static Future<XRPPrivateKey?> getWallet(String password) async {
    final encryptedSeed = await _storage.read(key: 'encrypted_seed');
    final salt = await _storage.read(key: 'salt');
    final address = await _storage.read(key: 'address');

    if (encryptedSeed == null || salt == null || address == null) return null;

    try {
      final saltBytes = base64.decode(salt);
      final combinedBytes = base64.decode(encryptedSeed);
      final iv = combinedBytes.sublist(0, 16);
      final ciphertext = combinedBytes.sublist(16);

      final pbkdf2 = PBKDF2KeyDerivator(Mac('SHA-256/HMAC'))
        ..init(Pbkdf2Parameters(Uint8List.fromList(saltBytes), 100000, 32));
      final key = pbkdf2.process(Uint8List.fromList(utf8.encode(password)));

      final cipher = PaddedBlockCipher('AES/CBC/PKCS7')
        ..init(false, ParametersWithIV(KeyParameter(key), iv));
      final decryptedSeedBytes = cipher.process(ciphertext);
      final seed = utf8.decode(decryptedSeedBytes);

      return XRPPrivateKey.fromSeed(seed); // Reconstruct the private key
    } catch (e) {
      return null; // Wrong password or corrupted data
    }
  }

  static Future<String?> getAddress() async {
    return await _storage.read(key: 'address');
  }

  static Future<bool> hasWallet() async {
    final encryptedSeed = await _storage.read(key: 'encrypted_seed');
    return encryptedSeed != null;
  }
}