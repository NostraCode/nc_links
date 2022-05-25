part of '../_index.dart';

class AnalyticsFab extends StatelessWidget {
  const AnalyticsFab({Key? key}) : super(key: key);

  AnalyticsCtrl get ct => x1AnalyticsCtrl;
  AnalyticsData get dt => x1AnalyticsData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
