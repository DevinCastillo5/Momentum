import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WorkoutStreaksRecord extends FirestoreRecord {
  WorkoutStreaksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "currentStreak" field.
  int? _currentStreak;
  int get currentStreak => _currentStreak ?? 0;
  bool hasCurrentStreak() => _currentStreak != null;

  // "longestStreak" field.
  int? _longestStreak;
  int get longestStreak => _longestStreak ?? 0;
  bool hasLongestStreak() => _longestStreak != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _currentStreak = castToType<int>(snapshotData['currentStreak']);
    _longestStreak = castToType<int>(snapshotData['longestStreak']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('workoutStreaks');

  static Stream<WorkoutStreaksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WorkoutStreaksRecord.fromSnapshot(s));

  static Future<WorkoutStreaksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WorkoutStreaksRecord.fromSnapshot(s));

  static WorkoutStreaksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WorkoutStreaksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WorkoutStreaksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WorkoutStreaksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WorkoutStreaksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WorkoutStreaksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWorkoutStreaksRecordData({
  String? userID,
  int? currentStreak,
  int? longestStreak,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'currentStreak': currentStreak,
      'longestStreak': longestStreak,
    }.withoutNulls,
  );

  return firestoreData;
}

class WorkoutStreaksRecordDocumentEquality
    implements Equality<WorkoutStreaksRecord> {
  const WorkoutStreaksRecordDocumentEquality();

  @override
  bool equals(WorkoutStreaksRecord? e1, WorkoutStreaksRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.currentStreak == e2?.currentStreak &&
        e1?.longestStreak == e2?.longestStreak;
  }

  @override
  int hash(WorkoutStreaksRecord? e) => const ListEquality()
      .hash([e?.userID, e?.currentStreak, e?.longestStreak]);

  @override
  bool isValidKey(Object? o) => o is WorkoutStreaksRecord;
}
