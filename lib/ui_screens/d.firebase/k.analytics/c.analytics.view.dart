part of '_index.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({Key? key}) : super(key: key);

  AnalyticsCtrl get ct => x1AnalyticsCtrl;
  AnalyticsData get dt => x1AnalyticsData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AnalyticsAppbar(),
      ),
      // floatingActionButton: const AnalyticsFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AnalyticsCharlie(),
            AnalyticsDelta(),
            AnalyticsEcho(),
          ],
        ),
      ),
    );
  }
}
