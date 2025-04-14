import '/components/workout_complete/workout_complete_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'workout_widget.dart' show WorkoutWidget;
import 'package:flutter/material.dart';

class WorkoutModel extends FlutterFlowModel<WorkoutWidget> {
  ///  Local state fields for this page.
  /// when workout starts
  DateTime? startTime;

  DateTime? endTime;

  String? formattedDuration;

  ///  State fields for stateful widgets in this page.

  // Model for WorkoutComplete component.
  late WorkoutCompleteModel workoutCompleteModel;

  @override
  void initState(BuildContext context) {
    workoutCompleteModel = createModel(context, () => WorkoutCompleteModel());
  }

  @override
  void dispose() {
    workoutCompleteModel.dispose();
  }
}
