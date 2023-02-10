part of '../_index.dart';

class InjI18nCharlie extends StatelessWidget {
  const InjI18nCharlie({Key? key}) : super(key: key);

  InjI18nCtrl get ct => Ctrl.injI18n;
  InjI18nData get dt => Data.injI18n.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Center(
        child: Text('${dt.rxInt.st}'),
      ),
    );
  }
}
