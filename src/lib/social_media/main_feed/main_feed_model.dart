import '/flutter_flow/flutter_flow_util.dart';
import '/social_media/socialnav/socialnav_widget.dart';
import '/index.dart';
import 'main_feed_widget.dart' show MainFeedWidget;
import 'package:flutter/material.dart';

class MainFeedModel extends FlutterFlowModel<MainFeedWidget> {
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
