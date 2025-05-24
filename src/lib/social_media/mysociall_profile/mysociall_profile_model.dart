import '/flutter_flow/flutter_flow_util.dart';
import '/social_media/socialnav/socialnav_widget.dart';
import '/index.dart';
import 'mysociall_profile_widget.dart' show MysociallProfileWidget;
import 'package:flutter/material.dart';

class MysociallProfileModel extends FlutterFlowModel<MysociallProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for socialnav component.
  late SocialnavModel socialnavModel;

  @override
  void initState(BuildContext context) {
    socialnavModel = createModel(context, () => SocialnavModel());
  }

  @override
  void dispose() {
    socialnavModel.dispose();
  }
}
