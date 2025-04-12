import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
  ///  Local state fields for this page.

  String? currentPicture;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  DateTime? datePicked;
  // State field(s) for weightslider widget.
  double? weightsliderValue;
  // State field(s) for weightText widget.
  FocusNode? weightTextFocusNode;
  TextEditingController? weightTextTextController;
  String? Function(BuildContext, String?)? weightTextTextControllerValidator;
  // State field(s) for heightslider widget.
  double? heightsliderValue;
  // State field(s) for heightText widget.
  FocusNode? heightTextFocusNode;
  TextEditingController? heightTextTextController;
  String? Function(BuildContext, String?)? heightTextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    weightTextFocusNode?.dispose();
    weightTextTextController?.dispose();

    heightTextFocusNode?.dispose();
    heightTextTextController?.dispose();
  }
}
