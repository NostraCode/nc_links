part of '_index.dart';

final x1InjTabData = RM.inject<InjTabData>(
  () => InjTabData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1InjTabCtrl.init()),
);

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
