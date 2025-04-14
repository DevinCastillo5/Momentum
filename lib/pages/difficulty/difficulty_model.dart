import '/components/workout_preview/workout_preview_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'difficulty_widget.dart' show DifficultyWidget;
import 'package:flutter/material.dart';

class DifficultyModel extends FlutterFlowModel<DifficultyWidget> {
  ///  Local state fields for this page.

  String? selectedDifficulty = '\"\"';

  ///  State fields for stateful widgets in this page.

  // Model for WorkoutPreview component.
  late WorkoutPreviewModel workoutPreviewModel;

  @override
  void initState(BuildContext context) {
    workoutPreviewModel = createModel(context, () => WorkoutPreviewModel());
  }

  @override
  void dispose() {
    workoutPreviewModel.dispose();
  }
}
