import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'rate_component_model.dart';
export 'rate_component_model.dart';

class RateComponentWidget extends StatefulWidget {
  const RateComponentWidget({super.key});

  @override
  State<RateComponentWidget> createState() => _RateComponentWidgetState();
}

class _RateComponentWidgetState extends State<RateComponentWidget> {
  late RateComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RateComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Rate Your Experience',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Josefin Sans',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'How would you rate your experience with our app?',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
                Image.network(
                  '',
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.cover,
                ),
                SliderTheme(
                  data: SliderThemeData(
                    showValueIndicator: ShowValueIndicator.always,
                  ),
                  child: Container(
                    width: 300.0,
                    child: Slider(
                      activeColor: FlutterFlowTheme.of(context).primary,
                      inactiveColor: Color(0x33000000),
                      min: 1.0,
                      max: 10.0,
                      value: _model.sliderValue ??= 5.0,
                      label: _model.sliderValue?.toStringAsFixed(0),
                      onChanged: (newValue) {
                        newValue = double.parse(newValue.toStringAsFixed(0));
                        safeSetState(() => _model.sliderValue = newValue);
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1   -',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Work Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      '10',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Work Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('RATE_COMPONENT_SUBMIT_RATING_BTN_ON_TAP');
                    logFirebaseEvent('Button_backend_call');

                    await currentUserReference!.update(createUsersRecordData(
                      userRating: _model.sliderValue,
                    ));
                    logFirebaseEvent('Button_navigate_to');

                    context.pushNamed(HomepageWidget.routeName);
                  },
                  text: 'Submit Rating',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 50.0,
                    padding: EdgeInsets.all(8.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: FlutterFlowTheme.of(context).info,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Maybe Later',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 40.0,
                    padding: EdgeInsets.all(8.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0x00FFFFFF),
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
