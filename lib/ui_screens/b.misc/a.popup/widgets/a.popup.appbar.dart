part of '../_index.dart';

class PopupAppbar extends StatelessWidget {
  const PopupAppbar({Key? key}) : super(key: key);

  PopupCtrl get ct => Ctrl.popup;
  PopupData get dt => Data.popup.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
