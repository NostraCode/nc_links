part of '_index.dart';

final x1AnalyticsData = RM.inject<AnalyticsData>(
  () => AnalyticsData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1AnalyticsCtrl.init()),
);

class AnalyticsData {
  final rxTitle = 'Analytics'.inj();

  final rxInt = 0.inj();

  final rxMessage = ''.inj();

  final analytics = x1FbAnalytics.st.instance;
}
