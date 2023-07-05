part of '../_index.dart';

class AnalyticsAppbar extends StatelessWidget {
  const AnalyticsAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
