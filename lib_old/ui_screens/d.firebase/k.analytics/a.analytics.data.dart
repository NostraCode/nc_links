part of '_index.dart';

class AnalyticsData {
  final rxTitle = 'Analytics'.inj();

  final rxInt = 0.inj();

  final rxMessage = ''.inj();

  final analytics = x1FbAnalytics.st.instance;
}
