part of '_index.dart';

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
