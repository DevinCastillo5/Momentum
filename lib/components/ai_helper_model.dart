import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ai_helper_widget.dart' show AiHelperWidget;
import 'package:flutter/material.dart';

class AiHelperModel extends FlutterFlowModel<AiHelperWidget> {
  ///  Local state fields for this component.

  List<ChatsStruct> chats = [];
  void addToChats(ChatsStruct item) => chats.add(item);
  void removeFromChats(ChatsStruct item) => chats.remove(item);
  void removeAtIndexFromChats(int index) => chats.removeAt(index);
  void insertAtIndexInChats(int index, ChatsStruct item) =>
      chats.insert(index, item);
  void updateChatsAtIndex(int index, Function(ChatsStruct) updateFn) =>
      chats[index] = updateFn(chats[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [AI Agent - Send Message to personalTrainer] action in Button widget.
  String? agentResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
