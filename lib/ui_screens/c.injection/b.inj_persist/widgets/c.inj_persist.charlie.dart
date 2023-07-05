part of '../_index.dart';

class InjPersistCharlie extends StatelessWidget {
  const InjPersistCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('change value of RM.env to'),
        const Text('Flavor.stage or Flavor.prod'),
        const Text('for config.store activating'),
        const SizedBoxH(50),
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${_dt.rxInt.st}')),
        OnReactive(() => Text('${_dt.rxIntPersist.st}')),
        OnReactive(() => Text(_dt.rxProductPersist.st.name)),
      ],
    );
  }
}
