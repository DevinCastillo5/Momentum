import '/components/navigating/navigating_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'my_stats_model.dart';
export 'my_stats_model.dart';

class MyStatsWidget extends StatefulWidget {
  const MyStatsWidget({super.key});

  static String routeName = 'MyStats';
  static String routePath = '/myStats';

  @override
  State<MyStatsWidget> createState() => _MyStatsWidgetState();
}

class _MyStatsWidgetState extends State<MyStatsWidget> {
  late MyStatsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyStatsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MyStats'});
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
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 25.0, 0.0, 0.0),
                              child: Text(
                                'Stats',
                                style: FlutterFlowTheme.of(context)
                                    .displayLarge
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      letterSpacing: 0.0,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 18.0, 0.0, 0.0),
                            child: Text(
                              'Level',
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Josefin Sans',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  18.0, 18.0, 18.0, 0.0),
                              child: LinearPercentIndicator(
                                percent: 0.5,
                                lineHeight: 30.0,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor:
                                    FlutterFlowTheme.of(context).secondary,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).accent4,
                                center: Text(
                                  '50%',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Josefin Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                barRadius: Radius.circular(25.0),
                                padding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 25.0, 25.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Momentum_2.jpeg',
                                width: 347.5,
                                height: 258.8,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 25.0, 25.0, 0.0),
                              child: FlutterFlowCalendar(
                                color: FlutterFlowTheme.of(context).primary,
                                iconColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                weekFormat: false,
                                weekStartsMonday: false,
                                rowHeight: 30.0,
                                onChange: (DateTimeRange? newSelectedDate) {
                                  safeSetState(() => _model
                                      .calendarSelectedDay = newSelectedDate);
                                },
                                titleStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                                dayOfWeekStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                dateStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                selectedDateStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                inactiveDateStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  40.0, 15.0, 0.0, 0.0),
                              child: Text(
                                'Current Streak',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  40.0, 15.0, 25.0, 0.0),
                              child: Text(
                                'Longest Streak',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Momentum_2.jpeg',
                                      width: 157.71,
                                      height: 150.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        65.0, 70.0, 0.0, 0.0),
                                    child: Text(
                                      'streak',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Josefin Sans',
                                            fontSize: 30.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 30.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/Momentum_2.jpeg',
                                                  width: 157.7,
                                                  height: 150.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 70.0, 65.0, 0.0),
                                              child: Text(
                                                'streak',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily:
                                                              'Josefin Sans',
                                                          fontSize: 30.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: wrapWithModel(
                      model: _model.navigatingModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NavigatingWidget(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
