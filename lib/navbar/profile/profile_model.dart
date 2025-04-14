import '/components/navigating/navigating_widget.dart';
import '/components/stats_bar/stats_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Model for statsBar component.
  late StatsBarModel statsBarModel;
  // Model for navigating component.
  late NavigatingModel navigatingModel;

  @override
  void initState(BuildContext context) {
    statsBarModel = createModel(context, () => StatsBarModel());
    navigatingModel = createModel(context, () => NavigatingModel());
  }

  @override
  void dispose() {
    statsBarModel.dispose();
    navigatingModel.dispose();
  }
}
