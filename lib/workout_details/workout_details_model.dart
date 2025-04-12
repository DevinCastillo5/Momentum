import '/components/workout_description_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'workout_details_widget.dart' show WorkoutDetailsWidget;
import 'package:flutter/material.dart';

class WorkoutDetailsModel extends FlutterFlowModel<WorkoutDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for workoutDescription component.
  late WorkoutDescriptionModel workoutDescriptionModel;

  @override
  void initState(BuildContext context) {
    workoutDescriptionModel =
        createModel(context, () => WorkoutDescriptionModel());
  }

  @override
  void dispose() {
    workoutDescriptionModel.dispose();
  }
}
