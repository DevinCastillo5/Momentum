import '/components/navigating/navigating_widget.dart';
import '/components/stats_bar/stats_bar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'newstats_widget.dart' show NewstatsWidget;
import 'package:flutter/material.dart';

class NewstatsModel extends FlutterFlowModel<NewstatsWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Model for statsBar component.
  late StatsBarModel statsBarModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for navigating component.
  late NavigatingModel navigatingModel;

  @override
  void initState(BuildContext context) {
    statsBarModel = createModel(context, () => StatsBarModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    navigatingModel = createModel(context, () => NavigatingModel());
  }

  @override
  void dispose() {
    statsBarModel.dispose();
    navigatingModel.dispose();
  }
}
