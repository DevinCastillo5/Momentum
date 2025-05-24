// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsStruct extends FFFirebaseStruct {
  ChatsStruct({
    ChatRoles? role,
    String? message,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _role = role,
        _message = message,
        super(firestoreUtilData);

  // "role" field.
  ChatRoles? _role;
  ChatRoles? get role => _role;
  set role(ChatRoles? val) => _role = val;

  bool hasRole() => _role != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  static ChatsStruct fromMap(Map<String, dynamic> data) => ChatsStruct(
        role: data['role'] is ChatRoles
            ? data['role']
            : deserializeEnum<ChatRoles>(data['role']),
        message: data['message'] as String?,
      );

  static ChatsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChatsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'role': _role?.serialize(),
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.Enum,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatsStruct(
        role: deserializeParam<ChatRoles>(
          data['role'],
          ParamType.Enum,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatsStruct &&
        role == other.role &&
        message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([role, message]);
}

ChatsStruct createChatsStruct({
  ChatRoles? role,
  String? message,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChatsStruct(
      role: role,
      message: message,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChatsStruct? updateChatsStruct(
  ChatsStruct? chats, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chats
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChatsStructData(
  Map<String, dynamic> firestoreData,
  ChatsStruct? chats,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chats == null) {
    return;
  }
  if (chats.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chats.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chatsData = getChatsFirestoreData(chats, forFieldValue);
  final nestedData = chatsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chats.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChatsFirestoreData(
  ChatsStruct? chats, [
  bool forFieldValue = false,
]) {
  if (chats == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chats.toMap());

  // Add any Firestore field values
  chats.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChatsListFirestoreData(
  List<ChatsStruct>? chatss,
) =>
    chatss?.map((e) => getChatsFirestoreData(e, true)).toList() ?? [];
