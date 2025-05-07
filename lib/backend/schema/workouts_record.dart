import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkoutsRecord extends FirestoreRecord {
  WorkoutsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "difficulty" field.
  String? _difficulty;
  String get difficulty => _difficulty ?? '';
  bool hasDifficulty() => _difficulty != null;

  // "exercises" field.
  List<String>? _exercises;
  List<String> get exercises => _exercises ?? const [];
  bool hasExercises() => _exercises != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  void _initializeFields() {
    _difficulty = snapshotData['difficulty'] as String?;
    _exercises = getDataList(snapshotData['exercises']);
    _type = snapshotData['type'] as String?;
    _name = snapshotData['name'] as String?;
    _time = snapshotData['time'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Workouts');

  static Stream<WorkoutsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkoutsRecord.fromSnapshot(s));

  static Future<WorkoutsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkoutsRecord.fromSnapshot(s));

  static WorkoutsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkoutsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkoutsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkoutsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkoutsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkoutsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkoutsRecordData({
  String? difficulty,
  String? type,
  String? name,
  String? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'difficulty': difficulty,
      'type': type,
      'name': name,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkoutsRecordDocumentEquality implements Equality<WorkoutsRecord> {
  const WorkoutsRecordDocumentEquality();

  @override
  bool equals(WorkoutsRecord? e1, WorkoutsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.difficulty == e2?.difficulty &&
        listEquality.equals(e1?.exercises, e2?.exercises) &&
        e1?.type == e2?.type &&
        e1?.name == e2?.name &&
        e1?.time == e2?.time;
  }

  @override
  int hash(WorkoutsRecord? e) => const ListEquality()
      .hash([e?.difficulty, e?.exercises, e?.type, e?.name, e?.time]);

  @override
  bool isValidKey(Object? o) => o is WorkoutsRecord;
}
