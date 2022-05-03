part of '../_index.dart';

class InjI18nAppbar extends StatelessWidget {
  const InjI18nAppbar({Key? key}) : super(key: key);

  InjI18nCtrl get ct => x1InjI18nCtrl;
  InjI18nData get dt => x1InjI18nData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
