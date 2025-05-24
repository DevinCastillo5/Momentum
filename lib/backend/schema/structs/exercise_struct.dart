// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ExerciseStruct extends FFFirebaseStruct {
  ExerciseStruct({
    String? name,
    String? sets,
    String? instructions,
    int? order,
    bool? done,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _sets = sets,
        _instructions = instructions,
        _order = order,
        _done = done,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "sets" field.
  String? _sets;
  String get sets => _sets ?? '';
  set sets(String? val) => _sets = val;

  bool hasSets() => _sets != null;

  // "instructions" field.
  String? _instructions;
  String get instructions => _instructions ?? '';
  set instructions(String? val) => _instructions = val;

  bool hasInstructions() => _instructions != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  // "done" field.
  bool? _done;
  bool get done => _done ?? false;
  set done(bool? val) => _done = val;

  bool hasDone() => _done != null;

  static ExerciseStruct fromMap(Map<String, dynamic> data) => ExerciseStruct(
        name: data['name'] as String?,
        sets: data['sets'] as String?,
        instructions: data['instructions'] as String?,
        order: castToType<int>(data['order']),
        done: data['done'] as bool?,
      );

  static ExerciseStruct? maybeFromMap(dynamic data) =>
      data is Map ? ExerciseStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'sets': _sets,
        'instructions': _instructions,
        'order': _order,
        'done': _done,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'sets': serializeParam(
          _sets,
          ParamType.String,
        ),
        'instructions': serializeParam(
          _instructions,
          ParamType.String,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'done': serializeParam(
          _done,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ExerciseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExerciseStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        sets: deserializeParam(
          data['sets'],
          ParamType.String,
          false,
        ),
        instructions: deserializeParam(
          data['instructions'],
          ParamType.String,
          false,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
        done: deserializeParam(
          data['done'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ExerciseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExerciseStruct &&
        name == other.name &&
        sets == other.sets &&
        instructions == other.instructions &&
        order == other.order &&
        done == other.done;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, sets, instructions, order, done]);
}

ExerciseStruct createExerciseStruct({
  String? name,
  String? sets,
  String? instructions,
  int? order,
  bool? done,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExerciseStruct(
      name: name,
      sets: sets,
      instructions: instructions,
      order: order,
      done: done,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ExerciseStruct? updateExerciseStruct(
  ExerciseStruct? exercise, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    exercise
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addExerciseStructData(
  Map<String, dynamic> firestoreData,
  ExerciseStruct? exercise,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (exercise == null) {
    return;
  }
  if (exercise.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && exercise.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final exerciseData = getExerciseFirestoreData(exercise, forFieldValue);
  final nestedData = exerciseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = exercise.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getExerciseFirestoreData(
  ExerciseStruct? exercise, [
  bool forFieldValue = false,
]) {
  if (exercise == null) {
    return {};
  }
  final firestoreData = mapToFirestore(exercise.toMap());

  // Add any Firestore field values
  exercise.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExerciseListFirestoreData(
  List<ExerciseStruct>? exercises,
) =>
    exercises?.map((e) => getExerciseFirestoreData(e, true)).toList() ?? [];
