import '/backend/backend.dart';
import '/components/exercise_description/exercise_description_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'exercise_description_page_model.dart';
export 'exercise_description_page_model.dart';

class ExerciseDescriptionPageWidget extends StatefulWidget {
  const ExerciseDescriptionPageWidget({
    super.key,
    required this.exerciseIndex,
    required this.workoutRef,
  });

  final int? exerciseIndex;
  final DocumentReference? workoutRef;

  static String routeName = 'exerciseDescriptionPage';
  static String routePath = '/exerciseDescriptionPage';

  @override
  State<ExerciseDescriptionPageWidget> createState() =>
      _ExerciseDescriptionPageWidgetState();
}

class _ExerciseDescriptionPageWidgetState
    extends State<ExerciseDescriptionPageWidget> {
  late ExerciseDescriptionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExerciseDescriptionPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'exerciseDescriptionPage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<WorkoutAPIRecord>>(
      stream: queryWorkoutAPIRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<WorkoutAPIRecord> exerciseDescriptionPageWorkoutAPIRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final exerciseDescriptionPageWorkoutAPIRecord =
            exerciseDescriptionPageWorkoutAPIRecordList.isNotEmpty
                ? exerciseDescriptionPageWorkoutAPIRecordList.first
                : null;

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
                  StreamBuilder<List<WorkoutAPIRecord>>(
                    stream: queryWorkoutAPIRecord(
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<WorkoutAPIRecord>
                          exerciseDescriptionWorkoutAPIRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final exerciseDescriptionWorkoutAPIRecord =
                          exerciseDescriptionWorkoutAPIRecordList.isNotEmpty
                              ? exerciseDescriptionWorkoutAPIRecordList.first
                              : null;

                      return wrapWithModel(
                        model: _model.exerciseDescriptionModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ExerciseDescriptionWidget(
                          exerciseIndex: widget.exerciseIndex!,
                          workoutRef:
                              exerciseDescriptionWorkoutAPIRecord!.reference,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
