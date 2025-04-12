import '/components/workout_description_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'workout_details_model.dart';
export 'workout_details_model.dart';

class WorkoutDetailsWidget extends StatefulWidget {
  const WorkoutDetailsWidget({super.key});

  static String routeName = 'workoutDetails';
  static String routePath = '/workoutDetails';

  @override
  State<WorkoutDetailsWidget> createState() => _WorkoutDetailsWidgetState();
}

class _WorkoutDetailsWidgetState extends State<WorkoutDetailsWidget> {
  late WorkoutDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkoutDetailsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'workoutDetails'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.workoutDescriptionModel,
                updateCallback: () => safeSetState(() {}),
                child: WorkoutDescriptionWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
