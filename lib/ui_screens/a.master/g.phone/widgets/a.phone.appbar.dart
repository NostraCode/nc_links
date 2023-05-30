part of '../_index.dart';

class PhoneAppbar extends StatelessWidget {
  const PhoneAppbar({Key? key}) : super(key: key);

  PhoneCtrl get ct => Ctrl.phone;
  PhoneData get dt => Data.phone.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
