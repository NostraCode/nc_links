part of '../_index.dart';

class InjForxAppbar extends StatelessWidget {
  const InjForxAppbar({Key? key}) : super(key: key);

  InjFormCtrl get ct => Ctrl.injForm;
  InjFormData get dt => Data.injForm.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
