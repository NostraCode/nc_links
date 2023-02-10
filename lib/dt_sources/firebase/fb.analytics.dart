part of '_index.dart';

final x1FbAnalytics = RM.inject<FbAnalytics>(() => FbAnalytics());

class FbAnalytics {
  final instance = FirebaseAnalytics.instance;
}
