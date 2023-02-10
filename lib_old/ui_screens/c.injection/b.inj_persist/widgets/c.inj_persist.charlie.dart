part of '../_index.dart';

class InjPersistCharlie extends StatelessWidget {
  const InjPersistCharlie({Key? key}) : super(key: key);

  InjPersistCtrl get ct => Ctrl.injPersist;
  InjPersistData get dt => Data.injPersist.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('change value of RM.env to'),
        const Text('Flavor.stage or Flavor.prod'),
        const Text('for config.store activating'),
        const SizedBoxH(50),
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
        OnReactive(() => Text('${dt.rxIntPersist.st}')),
        OnReactive(() => Text(dt.rxProductPersist.st.name)),
      ],
    );
  }
}
