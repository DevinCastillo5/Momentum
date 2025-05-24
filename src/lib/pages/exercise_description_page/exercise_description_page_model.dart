import '/components/exercise_description/exercise_description_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exercise_description_page_widget.dart'
    show ExerciseDescriptionPageWidget;
import 'package:flutter/material.dart';

class ExerciseDescriptionPageModel
    extends FlutterFlowModel<ExerciseDescriptionPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for exerciseDescription component.
  late ExerciseDescriptionModel exerciseDescriptionModel;

  @override
  void initState(BuildContext context) {
    exerciseDescriptionModel =
        createModel(context, () => ExerciseDescriptionModel());
  }

  @override
  void dispose() {
    exerciseDescriptionModel.dispose();
  }
}
