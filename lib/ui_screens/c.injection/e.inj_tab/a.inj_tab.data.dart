part of '_index.dart';

class InjTabData {
  final title = 'InjTab';

  final rxTab = RM.injectTabPageView(
    length: 3,
    initialIndex: 0,
    keepPage: true,
    // viewportFraction: 0.8,
    // curve: Curves.elasticIn,
    // duration: const Duration(seconds: 3),
  );
}
