import '/components/navigating_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_stats_widget.dart' show MyStatsWidget;
import 'package:flutter/material.dart';

class MyStatsModel extends FlutterFlowModel<MyStatsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for navigating component.
  late NavigatingModel navigatingModel;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    navigatingModel = createModel(context, () => NavigatingModel());
  }

  @override
  void dispose() {
    navigatingModel.dispose();
  }
}
