import '/flutter_flow/flutter_flow_util.dart';
import 'ai_helper_widget.dart' show AiHelperWidget;
import 'package:flutter/material.dart';

class AiHelperModel extends FlutterFlowModel<AiHelperWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for textField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }
}
