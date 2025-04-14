import '/components/exercise_description/exercise_description_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'exercise_description_page_model.dart';
export 'exercise_description_page_model.dart';

class ExerciseDescriptionPageWidget extends StatefulWidget {
  const ExerciseDescriptionPageWidget({super.key});

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
                model: _model.exerciseDescriptionModel,
                updateCallback: () => safeSetState(() {}),
                child: ExerciseDescriptionWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
