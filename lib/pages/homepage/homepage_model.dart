import '/components/navigating_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigating component.
  late NavigatingModel navigatingModel;

  @override
  void initState(BuildContext context) {
    navigatingModel = createModel(context, () => NavigatingModel());
  }

  @override
  void dispose() {
    navigatingModel.dispose();
  }
}
