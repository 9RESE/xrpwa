// Copyright (c) 2021, XRP Ledger Foundation

// Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE
// INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE
// FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
// LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING
// OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

//   Note: This code has been adapted from its original Python version to Dart.

//   The 3-Clause BSD License

//   Copyright (c) 2023 Mohsen Haydari (MRTNETWORK)
//   All rights reserved.

//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions are met:

//   1. Redistributions of source code must retain the above copyright notice, this
//      list of conditions, and the following disclaimer.
//   2. Redistributions in binary form must reproduce the above copyright notice, this
//      list of conditions, and the following disclaimer in the documentation and/or
//      other materials provided with the distribution.
//   3. Neither the name of the [organization] nor the names of its contributors may be
//      used to endorse or promote products derived from this software without
//      specific prior written permission.

//   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
//   ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//   WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
//   IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
//   INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
//   BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
//   LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
//   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
//   OF THE POSSIBILITY OF SUCH DAMAGE.

part of 'package:xrpl_dart/src/xrpl/bytes/definations/definations.dart';

const Map<String, dynamic> _definationsFields = {
  'TYPES': {
    'Done': -1,
    'Unknown': -2,
    'NotPresent': 0,
    'UInt16': 1,
    'UInt32': 2,
    'UInt64': 3,
    'Hash128': 4,
    'Hash256': 5,
    'Amount': 6,
    'Blob': 7,
    'AccountID': 8,
    'STObject': 14,
    'STArray': 15,
    'UInt8': 16,
    'Hash160': 17,
    'PathSet': 18,
    'Vector256': 19,
    'UInt96': 20,
    'UInt192': 21,
    'UInt384': 22,
    'UInt512': 23,
    'Issue': 24,
    'XChainBridge': 25,
    'Transaction': 10001,
    'LedgerEntry': 10002,
    'Validation': 10003,
    'Metadata': 10004
  },
  'LEDGER_ENTRY_TYPES': {
    'Invalid': -1,
    'AccountRoot': 97,
    'DirectoryNode': 100,
    'RippleState': 114,
    'Ticket': 84,
    'SignerList': 83,
    'Offer': 111,
    'Bridge': 105,
    'LedgerHashes': 104,
    'Amendments': 102,
    'XChainOwnedClaimID': 113,
    'XChainOwnedCreateAccountClaimID': 116,
    'FeeSettings': 115,
    'Escrow': 117,
    'PayChannel': 120,
    'Check': 67,
    'DepositPreauth': 112,
    'NegativeUNL': 78,
    'NFTokenPage': 80,
    'NFTokenOffer': 55,
    'AMM': 121,
    'DID': 73,
    'Any': -3,
    'Child': -2,
    'Nickname': 110,
    'Contract': 99,
    'GeneratorMap': 103
  },
  'FIELDS': {
    'Generic': {
      'nth': 0,
      'isVLEncoded': false,
      'isSerialized': false,
      'isSigningField': false,
      'type': 'Unknown'
    },
    'Invalid': {
      'nth': -1,
      'isVLEncoded': false,
      'isSerialized': false,
      'isSigningField': false,
      'type': 'Unknown'
    },
    'ObjectEndMarker': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'ArrayEndMarker': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'hash': {
      'nth': 257,
      'isVLEncoded': false,
      'isSerialized': false,
      'isSigningField': false,
      'type': 'Hash256'
    },
    'index': {
      'nth': 258,
      'isVLEncoded': false,
      'isSerialized': false,
      'isSigningField': false,
      'type': 'Hash256'
    },
    'taker_gets_funded': {
      'nth': 258,
      'isVLEncoded': false,
      'isSerialized': false,
      'isSigningField': false,
      'type': 'Amount'
    },
    'taker_pays_funded': {
      'nth': 259,
      'isVLEncoded': false,
      'isSerialized': false,
      'isSigningField': false,
      'type': 'Amount'
    },
    'LedgerEntry': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': false,
      'isSigningField': true,
      'type': 'LedgerEntry'
    },
    'Transaction': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': false,
      'isSigningField': true,
      'type': 'Transaction'
    },
    'Validation': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': false,
      'isSigningField': true,
      'type': 'Validation'
    },
    'Metadata': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Metadata'
    },
    'CloseResolution': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt8'
    },
    'Method': {
      'nth': 2,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt8'
    },
    'TransactionResult': {
      'nth': 3,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt8'
    },
    'TickSize': {
      'nth': 16,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt8'
    },
    'UNLModifyDisabling': {
      'nth': 17,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt8'
    },
    'HookResult': {
      'nth': 18,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt8'
    },
    'WasLockingChainSend': {
      'nth': 19,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt8'
    },
    'LedgerEntryType': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'TransactionType': {
      'nth': 2,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'SignerWeight': {
      'nth': 3,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'TransferFee': {
      'nth': 4,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'TradingFee': {
      'nth': 5,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'DiscountedFee': {
      'nth': 6,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'Version': {
      'nth': 16,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'HookStateChangeCount': {
      'nth': 17,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'HookEmitCount': {
      'nth': 18,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'HookExecutionIndex': {
      'nth': 19,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'HookApiVersion': {
      'nth': 20,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt16'
    },
    'NetworkID': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'Flags': {
      'nth': 2,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'SourceTag': {
      'nth': 3,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'Sequence': {
      'nth': 4,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'PreviousTxnLgrSeq': {
      'nth': 5,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'LedgerSequence': {
      'nth': 6,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'CloseTime': {
      'nth': 7,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'ParentCloseTime': {
      'nth': 8,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'SigningTime': {
      'nth': 9,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'Expiration': {
      'nth': 10,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'TransferRate': {
      'nth': 11,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'WalletSize': {
      'nth': 12,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'OwnerCount': {
      'nth': 13,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'DestinationTag': {
      'nth': 14,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'HighQualityIn': {
      'nth': 16,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'HighQualityOut': {
      'nth': 17,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'LowQualityIn': {
      'nth': 18,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'LowQualityOut': {
      'nth': 19,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'QualityIn': {
      'nth': 20,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'QualityOut': {
      'nth': 21,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'StampEscrow': {
      'nth': 22,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'BondAmount': {
      'nth': 23,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'LoadFee': {
      'nth': 24,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'OfferSequence': {
      'nth': 25,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'FirstLedgerSequence': {
      'nth': 26,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'LastLedgerSequence': {
      'nth': 27,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'TransactionIndex': {
      'nth': 28,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'OperationLimit': {
      'nth': 29,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'ReferenceFeeUnits': {
      'nth': 30,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'ReserveBase': {
      'nth': 31,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'ReserveIncrement': {
      'nth': 32,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'SetFlag': {
      'nth': 33,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'ClearFlag': {
      'nth': 34,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'SignerQuorum': {
      'nth': 35,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'CancelAfter': {
      'nth': 36,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'FinishAfter': {
      'nth': 37,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'SignerListID': {
      'nth': 38,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'SettleDelay': {
      'nth': 39,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'TicketCount': {
      'nth': 40,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'TicketSequence': {
      'nth': 41,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'NFTokenTaxon': {
      'nth': 42,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'MintedNFTokens': {
      'nth': 43,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'BurnedNFTokens': {
      'nth': 44,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'HookStateCount': {
      'nth': 45,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'EmitGeneration': {
      'nth': 46,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'VoteWeight': {
      'nth': 48,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'FirstNFTokenSequence': {
      'nth': 50,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt32'
    },
    'IndexNext': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'IndexPrevious': {
      'nth': 2,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'BookNode': {
      'nth': 3,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'OwnerNode': {
      'nth': 4,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'BaseFee': {
      'nth': 5,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'ExchangeRate': {
      'nth': 6,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'LowNode': {
      'nth': 7,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'HighNode': {
      'nth': 8,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'DestinationNode': {
      'nth': 9,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'Cookie': {
      'nth': 10,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'ServerVersion': {
      'nth': 11,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'NFTokenOfferNode': {
      'nth': 12,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'EmitBurden': {
      'nth': 13,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'HookOn': {
      'nth': 16,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'HookInstructionCount': {
      'nth': 17,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'HookReturnCode': {
      'nth': 18,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'ReferenceCount': {
      'nth': 19,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'XChainClaimID': {
      'nth': 20,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'XChainAccountCreateCount': {
      'nth': 21,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'XChainAccountClaimCount': {
      'nth': 22,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'UInt64'
    },
    'EmailHash': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash128'
    },
    'TakerPaysCurrency': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash160'
    },
    'TakerPaysIssuer': {
      'nth': 2,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash160'
    },
    'TakerGetsCurrency': {
      'nth': 3,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash160'
    },
    'TakerGetsIssuer': {
      'nth': 4,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash160'
    },
    'LedgerHash': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'ParentHash': {
      'nth': 2,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'TransactionHash': {
      'nth': 3,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'AccountHash': {
      'nth': 4,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'PreviousTxnID': {
      'nth': 5,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'LedgerIndex': {
      'nth': 6,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'WalletLocator': {
      'nth': 7,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'RootIndex': {
      'nth': 8,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'AccountTxnID': {
      'nth': 9,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'NFTokenID': {
      'nth': 10,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'EmitParentTxnID': {
      'nth': 11,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'EmitNonce': {
      'nth': 12,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'EmitHookHash': {
      'nth': 13,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'AMMID': {
      'nth': 14,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'BookDirectory': {
      'nth': 16,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'InvoiceID': {
      'nth': 17,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'Nickname': {
      'nth': 18,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'Amendment': {
      'nth': 19,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'Digest': {
      'nth': 21,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'Channel': {
      'nth': 22,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'ConsensusHash': {
      'nth': 23,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'CheckID': {
      'nth': 24,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'ValidatedHash': {
      'nth': 25,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'PreviousPageMin': {
      'nth': 26,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'NextPageMin': {
      'nth': 27,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'NFTokenBuyOffer': {
      'nth': 28,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'NFTokenSellOffer': {
      'nth': 29,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'HookStateKey': {
      'nth': 30,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'HookHash': {
      'nth': 31,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'HookNamespace': {
      'nth': 32,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'HookSetTxnID': {
      'nth': 33,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Hash256'
    },
    'Amount': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'Balance': {
      'nth': 2,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'LimitAmount': {
      'nth': 3,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'TakerPays': {
      'nth': 4,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'TakerGets': {
      'nth': 5,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'LowLimit': {
      'nth': 6,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'HighLimit': {
      'nth': 7,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'Fee': {
      'nth': 8,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'SendMax': {
      'nth': 9,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'DeliverMin': {
      'nth': 10,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'Amount2': {
      'nth': 11,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'BidMin': {
      'nth': 12,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'BidMax': {
      'nth': 13,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'MinimumOffer': {
      'nth': 16,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'RippleEscrow': {
      'nth': 17,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'DeliveredAmount': {
      'nth': 18,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'NFTokenBrokerFee': {
      'nth': 19,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'BaseFeeDrops': {
      'nth': 22,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'ReserveBaseDrops': {
      'nth': 23,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'ReserveIncrementDrops': {
      'nth': 24,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'LPTokenOut': {
      'nth': 25,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'LPTokenIn': {
      'nth': 26,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'EPrice': {
      'nth': 27,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'Price': {
      'nth': 28,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'SignatureReward': {
      'nth': 29,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'MinAccountCreateAmount': {
      'nth': 30,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'LPTokenBalance': {
      'nth': 31,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Amount'
    },
    'PublicKey': {
      'nth': 1,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'MessageKey': {
      'nth': 2,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'SigningPubKey': {
      'nth': 3,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'TxnSignature': {
      'nth': 4,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': false,
      'type': 'Blob'
    },
    'URI': {
      'nth': 5,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'Signature': {
      'nth': 6,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': false,
      'type': 'Blob'
    },
    'Domain': {
      'nth': 7,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'FundCode': {
      'nth': 8,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'RemoveCode': {
      'nth': 9,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'ExpireCode': {
      'nth': 10,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'CreateCode': {
      'nth': 11,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'MemoType': {
      'nth': 12,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'MemoData': {
      'nth': 13,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'MemoFormat': {
      'nth': 14,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'Fulfillment': {
      'nth': 16,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'Condition': {
      'nth': 17,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'MasterSignature': {
      'nth': 18,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': false,
      'type': 'Blob'
    },
    'UNLModifyValidator': {
      'nth': 19,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'ValidatorToDisable': {
      'nth': 20,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'ValidatorToReEnable': {
      'nth': 21,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'HookStateData': {
      'nth': 22,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'HookReturnString': {
      'nth': 23,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'HookParameterName': {
      'nth': 24,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'HookParameterValue': {
      'nth': 25,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'DIDDocument': {
      'nth': 26,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'Data': {
      'nth': 27,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Blob'
    },
    'Account': {
      'nth': 1,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'Owner': {
      'nth': 2,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'Destination': {
      'nth': 3,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'Issuer': {
      'nth': 4,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'Authorize': {
      'nth': 5,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'Unauthorize': {
      'nth': 6,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'RegularKey': {
      'nth': 8,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'NFTokenMinter': {
      'nth': 9,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'EmitCallback': {
      'nth': 10,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'HookAccount': {
      'nth': 16,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'OtherChainSource': {
      'nth': 18,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'OtherChainDestination': {
      'nth': 19,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'AttestationSignerAccount': {
      'nth': 20,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'AttestationRewardAccount': {
      'nth': 21,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'LockingChainDoor': {
      'nth': 22,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'IssuingChainDoor': {
      'nth': 23,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'AccountID'
    },
    'Indexes': {
      'nth': 1,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Vector256'
    },
    'Hashes': {
      'nth': 2,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Vector256'
    },
    'Amendments': {
      'nth': 3,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Vector256'
    },
    'NFTokenOffers': {
      'nth': 4,
      'isVLEncoded': true,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Vector256'
    },
    'Paths': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'PathSet'
    },
    'LockingChainIssue': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Issue'
    },
    'IssuingChainIssue': {
      'nth': 2,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Issue'
    },
    'Asset': {
      'nth': 3,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Issue'
    },
    'Asset2': {
      'nth': 4,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'Issue'
    },
    'XChainBridge': {
      'nth': 1,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'XChainBridge'
    },
    'TransactionMetaData': {
      'nth': 2,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'CreatedNode': {
      'nth': 3,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'DeletedNode': {
      'nth': 4,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'ModifiedNode': {
      'nth': 5,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'PreviousFields': {
      'nth': 6,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'FinalFields': {
      'nth': 7,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'NewFields': {
      'nth': 8,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'TemplateEntry': {
      'nth': 9,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'Memo': {
      'nth': 10,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'SignerEntry': {
      'nth': 11,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'NFToken': {
      'nth': 12,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'EmitDetails': {
      'nth': 13,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'Hook': {
      'nth': 14,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'Signer': {
      'nth': 16,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'Majority': {
      'nth': 18,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'DisabledValidator': {
      'nth': 19,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'EmittedTxn': {
      'nth': 20,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'HookExecution': {
      'nth': 21,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'HookDefinition': {
      'nth': 22,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'HookParameter': {
      'nth': 23,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'HookGrant': {
      'nth': 24,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'VoteEntry': {
      'nth': 25,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'AuctionSlot': {
      'nth': 26,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'AuthAccount': {
      'nth': 27,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'XChainClaimProofSig': {
      'nth': 28,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'XChainCreateAccountProofSig': {
      'nth': 29,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'XChainClaimAttestationCollectionElement': {
      'nth': 30,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'XChainCreateAccountAttestationCollectionElement': {
      'nth': 31,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STObject'
    },
    'Signers': {
      'nth': 3,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': false,
      'type': 'STArray'
    },
    'SignerEntries': {
      'nth': 4,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'Template': {
      'nth': 5,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'Necessary': {
      'nth': 6,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'Sufficient': {
      'nth': 7,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'AffectedNodes': {
      'nth': 8,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'Memos': {
      'nth': 9,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'NFTokens': {
      'nth': 10,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'Hooks': {
      'nth': 11,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'VoteSlots': {
      'nth': 12,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'Majorities': {
      'nth': 16,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'DisabledValidators': {
      'nth': 17,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'HookExecutions': {
      'nth': 18,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'HookParameters': {
      'nth': 19,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'HookGrants': {
      'nth': 20,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'XChainClaimAttestations': {
      'nth': 21,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'XChainCreateAccountAttestations': {
      'nth': 22,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    },
    'AuthAccounts': {
      'nth': 25,
      'isVLEncoded': false,
      'isSerialized': true,
      'isSigningField': true,
      'type': 'STArray'
    }
  },
  'TRANSACTION_RESULTS': {
    'telLOCAL_ERROR': -399,
    'telBAD_DOMAIN': -398,
    'telBAD_PATH_COUNT': -397,
    'telBAD_PUBLIC_KEY': -396,
    'telFAILED_PROCESSING': -395,
    'telINSUF_FEE_P': -394,
    'telNO_DST_PARTIAL': -393,
    'telCAN_NOT_QUEUE': -392,
    'telCAN_NOT_QUEUE_BALANCE': -391,
    'telCAN_NOT_QUEUE_BLOCKS': -390,
    'telCAN_NOT_QUEUE_BLOCKED': -389,
    'telCAN_NOT_QUEUE_FEE': -388,
    'telCAN_NOT_QUEUE_FULL': -387,
    'telWRONG_NETWORK': -386,
    'telREQUIRES_NETWORK_ID': -385,
    'telNETWORK_ID_MAKES_TX_NON_CANONICAL': -384,
    'temMALFORMED': -299,
    'temBAD_AMOUNT': -298,
    'temBAD_CURRENCY': -297,
    'temBAD_EXPIRATION': -296,
    'temBAD_FEE': -295,
    'temBAD_ISSUER': -294,
    'temBAD_LIMIT': -293,
    'temBAD_OFFER': -292,
    'temBAD_PATH': -291,
    'temBAD_PATH_LOOP': -290,
    'temBAD_REGKEY': -289,
    'temBAD_SEND_XRP_LIMIT': -288,
    'temBAD_SEND_XRP_MAX': -287,
    'temBAD_SEND_XRP_NO_DIRECT': -286,
    'temBAD_SEND_XRP_PARTIAL': -285,
    'temBAD_SEND_XRP_PATHS': -284,
    'temBAD_SEQUENCE': -283,
    'temBAD_SIGNATURE': -282,
    'temBAD_SRC_ACCOUNT': -281,
    'temBAD_TRANSFER_RATE': -280,
    'temDST_IS_SRC': -279,
    'temDST_NEEDED': -278,
    'temINVALID': -277,
    'temINVALID_FLAG': -276,
    'temREDUNDANT': -275,
    'temRIPPLE_EMPTY': -274,
    'temDISABLED': -273,
    'temBAD_SIGNER': -272,
    'temBAD_QUORUM': -271,
    'temBAD_WEIGHT': -270,
    'temBAD_TICK_SIZE': -269,
    'temINVALID_ACCOUNT_ID': -268,
    'temCANNOT_PREAUTH_SELF': -267,
    'temINVALID_COUNT': -266,
    'temUNCERTAIN': -265,
    'temUNKNOWN': -264,
    'temSEQ_AND_TICKET': -263,
    'temBAD_NFTOKEN_TRANSFER_FEE': -262,
    'temBAD_AMM_TOKENS': -261,
    'temXCHAIN_EQUAL_DOOR_ACCOUNTS': -260,
    'temXCHAIN_BAD_PROOF': -259,
    'temXCHAIN_BRIDGE_BAD_ISSUES': -258,
    'temXCHAIN_BRIDGE_NONDOOR_OWNER': -257,
    'temXCHAIN_BRIDGE_BAD_MIN_ACCOUNT_CREATE_AMOUNT': -256,
    'temXCHAIN_BRIDGE_BAD_REWARD_AMOUNT': -255,
    'temEMPTY_DID': -254,
    'tefFAILURE': -199,
    'tefALREADY': -198,
    'tefBAD_ADD_AUTH': -197,
    'tefBAD_AUTH': -196,
    'tefBAD_LEDGER': -195,
    'tefCREATED': -194,
    'tefEXCEPTION': -193,
    'tefINTERNAL': -192,
    'tefNO_AUTH_REQUIRED': -191,
    'tefPAST_SEQ': -190,
    'tefWRONG_PRIOR': -189,
    'tefMASTER_DISABLED': -188,
    'tefMAX_LEDGER': -187,
    'tefBAD_SIGNATURE': -186,
    'tefBAD_QUORUM': -185,
    'tefNOT_MULTI_SIGNING': -184,
    'tefBAD_AUTH_MASTER': -183,
    'tefINVARIANT_FAILED': -182,
    'tefTOO_BIG': -181,
    'tefNO_TICKET': -180,
    'tefNFTOKEN_IS_NOT_TRANSFERABLE': -179,
    'terRETRY': -99,
    'terFUNDS_SPENT': -98,
    'terINSUF_FEE_B': -97,
    'terNO_ACCOUNT': -96,
    'terNO_AUTH': -95,
    'terNO_LINE': -94,
    'terOWNERS': -93,
    'terPRE_SEQ': -92,
    'terLAST': -91,
    'terNO_RIPPLE': -90,
    'terQUEUED': -89,
    'terPRE_TICKET': -88,
    'terNO_AMM': -87,
    'terSUBMITTED': -86,
    'tesSUCCESS': 0,
    'tecCLAIM': 100,
    'tecPATH_PARTIAL': 101,
    'tecUNFUNDED_ADD': 102,
    'tecUNFUNDED_OFFER': 103,
    'tecUNFUNDED_PAYMENT': 104,
    'tecFAILED_PROCESSING': 105,
    'tecDIR_FULL': 121,
    'tecINSUF_RESERVE_LINE': 122,
    'tecINSUF_RESERVE_OFFER': 123,
    'tecNO_DST': 124,
    'tecNO_DST_INSUF_XRP': 125,
    'tecNO_LINE_INSUF_RESERVE': 126,
    'tecNO_LINE_REDUNDANT': 127,
    'tecPATH_DRY': 128,
    'tecUNFUNDED': 129,
    'tecNO_ALTERNATIVE_KEY': 130,
    'tecNO_REGULAR_KEY': 131,
    'tecOWNERS': 132,
    'tecNO_ISSUER': 133,
    'tecNO_AUTH': 134,
    'tecNO_LINE': 135,
    'tecINSUFF_FEE': 136,
    'tecFROZEN': 137,
    'tecNO_TARGET': 138,
    'tecNO_PERMISSION': 139,
    'tecNO_ENTRY': 140,
    'tecINSUFFICIENT_RESERVE': 141,
    'tecNEED_MASTER_KEY': 142,
    'tecDST_TAG_NEEDED': 143,
    'tecINTERNAL': 144,
    'tecOVERSIZE': 145,
    'tecCRYPTOCONDITION_ERROR': 146,
    'tecINVARIANT_FAILED': 147,
    'tecEXPIRED': 148,
    'tecDUPLICATE': 149,
    'tecKILLED': 150,
    'tecHAS_OBLIGATIONS': 151,
    'tecTOO_SOON': 152,
    'tecHOOK_ERROR': 153,
    'tecMAX_SEQUENCE_REACHED': 154,
    'tecNO_SUITABLE_NFTOKEN_PAGE': 155,
    'tecNFTOKEN_BUY_SELL_MISMATCH': 156,
    'tecNFTOKEN_OFFER_TYPE_MISMATCH': 157,
    'tecCANT_ACCEPT_OWN_NFTOKEN_OFFER': 158,
    'tecINSUFFICIENT_FUNDS': 159,
    'tecOBJECT_NOT_FOUND': 160,
    'tecINSUFFICIENT_PAYMENT': 161,
    'tecUNFUNDED_AMM': 162,
    'tecAMM_BALANCE': 163,
    'tecAMM_FAILED': 164,
    'tecAMM_INVALID_TOKENS': 165,
    'tecAMM_EMPTY': 166,
    'tecAMM_NOT_EMPTY': 167,
    'tecAMM_ACCOUNT': 168,
    'tecINCOMPLETE': 169,
    'tecXCHAIN_BAD_TRANSFER_ISSUE': 170,
    'tecXCHAIN_NO_CLAIM_ID': 171,
    'tecXCHAIN_BAD_CLAIM_ID': 172,
    'tecXCHAIN_CLAIM_NO_QUORUM': 173,
    'tecXCHAIN_PROOF_UNKNOWN_KEY': 174,
    'tecXCHAIN_CREATE_ACCOUNT_NONXRP_ISSUE': 175,
    'tecXCHAIN_WRONG_CHAIN': 176,
    'tecXCHAIN_REWARD_MISMATCH': 177,
    'tecXCHAIN_NO_SIGNERS_LIST': 178,
    'tecXCHAIN_SENDING_ACCOUNT_MISMATCH': 179,
    'tecXCHAIN_INSUFF_CREATE_AMOUNT': 180,
    'tecXCHAIN_ACCOUNT_CREATE_PAST': 181,
    'tecXCHAIN_ACCOUNT_CREATE_TOO_MANY': 182,
    'tecXCHAIN_PAYMENT_FAILED': 183,
    'tecXCHAIN_SELF_COMMIT': 184,
    'tecXCHAIN_BAD_PUBLIC_KEY_ACCOUNT_PAIR': 185,
    'tecXCHAIN_CREATE_ACCOUNT_DISABLED': 186,
    'tecEMPTY_DID': 187
  },
  'TRANSACTION_TYPES': {
    'Invalid': -1,
    'Payment': 0,
    'EscrowCreate': 1,
    'EscrowFinish': 2,
    'AccountSet': 3,
    'EscrowCancel': 4,
    'SetRegularKey': 5,
    'NickNameSet': 6,
    'OfferCreate': 7,
    'OfferCancel': 8,
    'Contract': 9,
    'TicketCreate': 10,
    'TicketCancel': 11,
    'SignerListSet': 12,
    'PaymentChannelCreate': 13,
    'PaymentChannelFund': 14,
    'PaymentChannelClaim': 15,
    'CheckCreate': 16,
    'CheckCash': 17,
    'CheckCancel': 18,
    'DepositPreauth': 19,
    'TrustSet': 20,
    'AccountDelete': 21,
    'SetHook': 22,
    'NFTokenMint': 25,
    'NFTokenBurn': 26,
    'NFTokenCreateOffer': 27,
    'NFTokenCancelOffer': 28,
    'NFTokenAcceptOffer': 29,
    'Clawback': 30,
    'AMMCreate': 35,
    'AMMDeposit': 36,
    'AMMWithdraw': 37,
    'AMMVote': 38,
    'AMMBid': 39,
    'AMMDelete': 40,
    'XChainCreateClaimID': 41,
    'XChainCommit': 42,
    'XChainClaim': 43,
    'XChainAccountCreateCommit': 44,
    'XChainAddClaimAttestation': 45,
    'XChainAddAccountCreateAttestation': 46,
    'XChainModifyBridge': 47,
    'XChainCreateBridge': 48,
    'DIDSet': 49,
    'DIDDelete': 50,
    'EnableAmendment': 100,
    'SetFee': 101,
    'UNLModify': 102
  }
};
