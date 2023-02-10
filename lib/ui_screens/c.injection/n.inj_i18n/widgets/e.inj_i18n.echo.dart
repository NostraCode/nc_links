part of '../_index.dart';

class InjI18nEcho extends StatelessWidget {
  const InjI18nEcho({Key? key}) : super(key: key);

  InjI18nCtrl get ct => Ctrl.injI18n;
  InjI18nData get dt => Data.injI18n.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
