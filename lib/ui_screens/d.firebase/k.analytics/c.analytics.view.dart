part of '_index.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AnalyticsAppbar(),
      ),
      // floatingActionButton: const AnalyticsFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnalyticsCharlie(),
            AnalyticsDelta(),
            AnalyticsEcho(),
          ],
        ),
      ),
    );
  }
}
