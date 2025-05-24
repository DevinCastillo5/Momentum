import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BadgesRecord extends FirestoreRecord {
  BadgesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "milestoneType" field.
  String? _milestoneType;
  String get milestoneType => _milestoneType ?? '';
  bool hasMilestoneType() => _milestoneType != null;

  // "milestoneValue" field.
  int? _milestoneValue;
  int get milestoneValue => _milestoneValue ?? 0;
  bool hasMilestoneValue() => _milestoneValue != null;

  // "iconURL" field.
  String? _iconURL;
  String get iconURL => _iconURL ?? '';
  bool hasIconURL() => _iconURL != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _milestoneType = snapshotData['milestoneType'] as String?;
    _milestoneValue = castToType<int>(snapshotData['milestoneValue']);
    _iconURL = snapshotData['iconURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('badges');

  static Stream<BadgesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BadgesRecord.fromSnapshot(s));

  static Future<BadgesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BadgesRecord.fromSnapshot(s));

  static BadgesRecord fromSnapshot(DocumentSnapshot snapshot) => BadgesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BadgesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BadgesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BadgesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BadgesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBadgesRecordData({
  String? title,
  String? description,
  String? milestoneType,
  int? milestoneValue,
  String? iconURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'milestoneType': milestoneType,
      'milestoneValue': milestoneValue,
      'iconURL': iconURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class BadgesRecordDocumentEquality implements Equality<BadgesRecord> {
  const BadgesRecordDocumentEquality();

  @override
  bool equals(BadgesRecord? e1, BadgesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.milestoneType == e2?.milestoneType &&
        e1?.milestoneValue == e2?.milestoneValue &&
        e1?.iconURL == e2?.iconURL;
  }

  @override
  int hash(BadgesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.milestoneType,
        e?.milestoneValue,
        e?.iconURL
      ]);

  @override
  bool isValidKey(Object? o) => o is BadgesRecord;
}
