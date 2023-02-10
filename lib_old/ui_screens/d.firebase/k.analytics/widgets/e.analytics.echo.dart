part of '../_index.dart';

class AnalyticsEcho extends StatelessWidget {
  const AnalyticsEcho({Key? key}) : super(key: key);

  AnalyticsCtrl get ct => Ctrl.analytics;
  AnalyticsData get dt => Data.analytics.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
