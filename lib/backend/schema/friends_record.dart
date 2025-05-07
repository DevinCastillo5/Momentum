import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FriendsRecord extends FirestoreRecord {
  FriendsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "sender_id" field.
  String? _senderId;
  String get senderId => _senderId ?? '';
  bool hasSenderId() => _senderId != null;

  // "reciever_id" field.
  String? _recieverId;
  String get recieverId => _recieverId ?? '';
  bool hasRecieverId() => _recieverId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _senderId = snapshotData['sender_id'] as String?;
    _recieverId = snapshotData['reciever_id'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('friends');

  static Stream<FriendsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FriendsRecord.fromSnapshot(s));

  static Future<FriendsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FriendsRecord.fromSnapshot(s));

  static FriendsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FriendsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FriendsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FriendsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FriendsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FriendsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFriendsRecordData({
  String? senderId,
  String? recieverId,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender_id': senderId,
      'reciever_id': recieverId,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class FriendsRecordDocumentEquality implements Equality<FriendsRecord> {
  const FriendsRecordDocumentEquality();

  @override
  bool equals(FriendsRecord? e1, FriendsRecord? e2) {
    return e1?.senderId == e2?.senderId &&
        e1?.recieverId == e2?.recieverId &&
        e1?.status == e2?.status;
  }

  @override
  int hash(FriendsRecord? e) =>
      const ListEquality().hash([e?.senderId, e?.recieverId, e?.status]);

  @override
  bool isValidKey(Object? o) => o is FriendsRecord;
}
