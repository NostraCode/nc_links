part of '../_index.dart';

class InjFormAppbar extends StatelessWidget {
  const InjFormAppbar({Key? key}) : super(key: key);

  InjFormCtrl get ct => x1InjFormCtrl;
  InjFormData get dt => x1InjFormData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
