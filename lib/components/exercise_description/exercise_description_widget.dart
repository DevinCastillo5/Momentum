import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'exercise_description_model.dart';
export 'exercise_description_model.dart';

class ExerciseDescriptionWidget extends StatefulWidget {
  const ExerciseDescriptionWidget({
    super.key,
    required this.exerciseIndex,
    required this.workoutRef,
  });

  final int? exerciseIndex;
  final WorkoutsRecord? workoutRef;

  @override
  State<ExerciseDescriptionWidget> createState() =>
      _ExerciseDescriptionWidgetState();
}

class _ExerciseDescriptionWidgetState extends State<ExerciseDescriptionWidget> {
  late ExerciseDescriptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExerciseDescriptionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exercise Details',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          font: GoogleFonts.josefinSans(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: Color(0xFFF2F2F2),
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'EXERCISE_DESCRIPTION_close_rounded_ICN_O');
                      logFirebaseEvent('IconButton_navigate_back');
                      context.safePop();
                    },
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        functions.formatExerciseName(widget
                            .workoutRef?.exercises
                            .elementAtOrNull(widget.exerciseIndex!)),
                        'exName',
                      ),
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontStyle,
                          ),
                    ),
                  ),
                  FutureBuilder<ApiCallResponse>(
                    future: GetExerciseByNameCall.call(
                      name: valueOrDefault<String>(
                        widget.workoutRef?.exercises
                            .elementAtOrNull(widget.exerciseIndex!),
                        'img',
                      ),
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
                      final listViewGetExerciseByNameResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final gifList = GetExerciseByNameCall.jsonName(
                                listViewGetExerciseByNameResponse.jsonBody,
                              )?.toList() ??
                              [];

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: gifList.length,
                            itemBuilder: (context, gifListIndex) {
                              final gifListItem = gifList[gifListIndex];
                              return Visibility(
                                visible: (GetExerciseByNameCall.jsonName(
                                      listViewGetExerciseByNameResponse
                                          .jsonBody,
                                    )?.elementAtOrNull(gifListIndex)) ==
                                    (widget.workoutRef?.exercises
                                        .elementAtOrNull(
                                            widget.exerciseIndex!)),
                                child: Container(
                                  width: 360.0,
                                  height: 360.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                        spreadRadius: 5.0,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(0.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 3.0,
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.network(
                                      (GetExerciseByNameCall.jsonGIFUrl(
                                        listViewGetExerciseByNameResponse
                                            .jsonBody,
                                      )!
                                          .elementAtOrNull(gifListIndex))!,
                                      width: 360.0,
                                      height: 360.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                  Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondary,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                          spreadRadius: 5.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(24.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Instructions:',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          FutureBuilder<ApiCallResponse>(
                            future: GetExerciseByNameCall.call(
                              name: valueOrDefault<String>(
                                widget.workoutRef?.exercises
                                    .elementAtOrNull(widget.exerciseIndex!),
                                'img',
                              ),
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
                              final listViewGetExerciseByNameResponse =
                                  snapshot.data!;

                              return Builder(
                                builder: (context) {
                                  final intructList =
                                      GetExerciseByNameCall.jsonName(
                                            listViewGetExerciseByNameResponse
                                                .jsonBody,
                                          )?.toList() ??
                                          [];

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: intructList.length,
                                    itemBuilder: (context, intructListIndex) {
                                      final intructListItem =
                                          intructList[intructListIndex];
                                      return Visibility(
                                        visible:
                                            (GetExerciseByNameCall.jsonName(
                                                  listViewGetExerciseByNameResponse
                                                      .jsonBody,
                                                )?.elementAtOrNull(
                                                    intructListIndex)) ==
                                                (widget.workoutRef?.exercises
                                                    .elementAtOrNull(widget
                                                        .exerciseIndex!)),
                                        child: Builder(
                                          builder: (context) {
                                            final intructList2 = GetExerciseByNameCall
                                                        .jsonInstructions(
                                                  listViewGetExerciseByNameResponse
                                                      .jsonBody,
                                                )
                                                    ?.where((e) =>
                                                        (GetExerciseByNameCall
                                                            .jsonName(
                                                          listViewGetExerciseByNameResponse
                                                              .jsonBody,
                                                        )?.elementAtOrNull(
                                                            intructListIndex)) ==
                                                        (widget.workoutRef
                                                            ?.exercises
                                                            .elementAtOrNull(
                                                                widget
                                                                    .exerciseIndex!)))
                                                    .toList()
                                                    .toList() ??
                                                [];

                                            return ListView.separated(
                                              padding: EdgeInsets.fromLTRB(
                                                0,
                                                10.0,
                                                0,
                                                0,
                                              ),
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: intructList2.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 10.0),
                                              itemBuilder:
                                                  (context, intructList2Index) {
                                                final intructList2Item =
                                                    intructList2[
                                                        intructList2Index];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 25.0, 0.0),
                                                  child: Text(
                                                    '${functions.addIntructionListView(intructList2Index.toString())}.) ${GetExerciseByNameCall.jsonInstructions(
                                                      listViewGetExerciseByNameResponse
                                                          .jsonBody,
                                                    )?.where((e) => (GetExerciseByNameCall.jsonName(
                                                          listViewGetExerciseByNameResponse
                                                              .jsonBody,
                                                        )?.elementAtOrNull(intructListIndex)) == (widget.workoutRef?.exercises.elementAtOrNull(widget.exerciseIndex!))).toList().elementAtOrNull(intructList2Index)}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 15.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FutureBuilder<ApiCallResponse>(
                                      future: GetExerciseByNameCall.call(
                                        name: widget.workoutRef?.exercises
                                            .elementAtOrNull(
                                                widget.exerciseIndex!),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final textGetExerciseByNameResponse =
                                            snapshot.data!;

                                        return Text(
                                          'Target Muscle: ${functions.formatExerciseName(GetExerciseByNameCall.jsonTargetMuscles(
                                            textGetExerciseByNameResponse
                                                .jsonBody,
                                          ))}',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontStyle,
                                              ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 10.0, 15.0, 15.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                FutureBuilder<ApiCallResponse>(
                                  future: GetExerciseByNameCall.call(
                                    name: widget.workoutRef?.exercises
                                        .elementAtOrNull(
                                            widget.exerciseIndex!),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final textGetExerciseByNameResponse =
                                        snapshot.data!;

                                    return Text(
                                      'Secondary Targeted Muscles: ',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                            ),
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                    );
                                  },
                                ),
                                Container(
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: GetExerciseByNameCall.call(
                                      name: valueOrDefault<String>(
                                        widget.workoutRef?.exercises
                                            .elementAtOrNull(
                                                widget.exerciseIndex!),
                                        'exName',
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final listViewGetExerciseByNameResponse =
                                          snapshot.data!;

                                      return Builder(
                                        builder: (context) {
                                          final secondariesList =
                                              GetExerciseByNameCall
                                                      .jsonSecondaryTargets(
                                                    listViewGetExerciseByNameResponse
                                                        .jsonBody,
                                                  )?.toList() ??
                                                  [];

                                          return ListView.separated(
                                            padding: EdgeInsets.fromLTRB(
                                              0,
                                              10.0,
                                              0,
                                              0,
                                            ),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: secondariesList.length,
                                            separatorBuilder: (_, __) =>
                                                SizedBox(height: 10.0),
                                            itemBuilder: (context,
                                                secondariesListIndex) {
                                              final secondariesListItem =
                                                  secondariesList[
                                                      secondariesListIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        25.0, 0.0, 25.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    functions.formatExerciseName(
                                                        GetExerciseByNameCall
                                                            .jsonSecondaryTargets(
                                                      listViewGetExerciseByNameResponse
                                                          .jsonBody,
                                                    )?.elementAtOrNull(
                                                            secondariesListIndex)),
                                                    'secondaryMuscle',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
