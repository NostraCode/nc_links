part of '../_index.dart';

class InjI18nCharlie extends StatelessWidget {
  const InjI18nCharlie({Key? key}) : super(key: key);

  InjI18nCtrl get ct => x1InjI18nCtrl;
  InjI18nData get dt => x1InjI18nData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Center(
        child: Text('${dt.rxInt.st}'),
      ),
    );
  }
}
