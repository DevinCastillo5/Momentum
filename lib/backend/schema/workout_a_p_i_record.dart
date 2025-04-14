import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkoutAPIRecord extends FirestoreRecord {
  WorkoutAPIRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "difficulty" field.
  String? _difficulty;
  String get difficulty => _difficulty ?? '';
  bool hasDifficulty() => _difficulty != null;

  // "equipment" field.
  String? _equipment;
  String get equipment => _equipment ?? '';
  bool hasEquipment() => _equipment != null;

  // "muscleGroups" field.
  List<String>? _muscleGroups;
  List<String> get muscleGroups => _muscleGroups ?? const [];
  bool hasMuscleGroups() => _muscleGroups != null;

  // "exerciseList" field.
  List<ExerciseStruct>? _exerciseList;
  List<ExerciseStruct> get exerciseList => _exerciseList ?? const [];
  bool hasExerciseList() => _exerciseList != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _type = snapshotData['type'] as String?;
    _difficulty = snapshotData['difficulty'] as String?;
    _equipment = snapshotData['equipment'] as String?;
    _muscleGroups = getDataList(snapshotData['muscleGroups']);
    _exerciseList = getStructList(
      snapshotData['exerciseList'],
      ExerciseStruct.fromMap,
    );
    _time = snapshotData['time'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('workoutAPI');

  static Stream<WorkoutAPIRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkoutAPIRecord.fromSnapshot(s));

  static Future<WorkoutAPIRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkoutAPIRecord.fromSnapshot(s));

  static WorkoutAPIRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkoutAPIRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkoutAPIRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkoutAPIRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkoutAPIRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkoutAPIRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkoutAPIRecordData({
  String? name,
  String? type,
  String? difficulty,
  String? equipment,
  String? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'type': type,
      'difficulty': difficulty,
      'equipment': equipment,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkoutAPIRecordDocumentEquality implements Equality<WorkoutAPIRecord> {
  const WorkoutAPIRecordDocumentEquality();

  @override
  bool equals(WorkoutAPIRecord? e1, WorkoutAPIRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.type == e2?.type &&
        e1?.difficulty == e2?.difficulty &&
        e1?.equipment == e2?.equipment &&
        listEquality.equals(e1?.muscleGroups, e2?.muscleGroups) &&
        listEquality.equals(e1?.exerciseList, e2?.exerciseList) &&
        e1?.time == e2?.time;
  }

  @override
  int hash(WorkoutAPIRecord? e) => const ListEquality().hash([
        e?.name,
        e?.type,
        e?.difficulty,
        e?.equipment,
        e?.muscleGroups,
        e?.exerciseList,
        e?.time
      ]);

  @override
  bool isValidKey(Object? o) => o is WorkoutAPIRecord;
}
