import 'package:collection/collection.dart';

enum ChatRoles {
  you,
  Trainer,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (ChatRoles):
      return ChatRoles.values.deserialize(value) as T?;
    default:
      return null;
  }
}
