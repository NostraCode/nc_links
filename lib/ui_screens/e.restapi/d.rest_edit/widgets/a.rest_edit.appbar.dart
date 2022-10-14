part of '../_index.dart';

class RestEditAppbar extends StatelessWidget {
  const RestEditAppbar({Key? key}) : super(key: key);

  RestEditCtrl get ct => x1RestEditCtrl;
  RestEditData get dt => x1RestEditData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
