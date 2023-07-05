part of '../_index.dart';

class InjI18nCharlie extends StatelessWidget {
  const InjI18nCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Center(
        child: Text('${_dt.rxInt.st}'),
      ),
    );
  }
}
