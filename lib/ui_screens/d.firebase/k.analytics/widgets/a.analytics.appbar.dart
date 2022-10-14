part of '../_index.dart';

class AnalyticsAppbar extends StatelessWidget {
  const AnalyticsAppbar({Key? key}) : super(key: key);

  AnalyticsCtrl get ct => x1AnalyticsCtrl;
  AnalyticsData get dt => x1AnalyticsData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
