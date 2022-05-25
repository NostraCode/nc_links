part of '_index.dart';

final x1InjAnimData = RM.inject<InjAnimData>(
  () => InjAnimData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1InjAnimCtrl.init()),
);

class InjAnimData {
  final title = 'InjAnim';

  final animation1 = RM.injectAnimation(
    duration: 1.seconds,
    curve: Curves.easeIn,
    reverseCurve: Curves.elasticOut,
    repeats: 2,
    shouldReverseRepeats: true,
    shouldAutoStart: true,
  );
}
