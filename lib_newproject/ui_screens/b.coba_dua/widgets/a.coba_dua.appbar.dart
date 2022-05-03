part of '../_index.dart';

class CobaDuaAppbar extends StatelessWidget {
  const CobaDuaAppbar({Key? key}) : super(key: key);

  CobaDuaCtrl get ct => x1CobaDuaCtrl;
  CobaDuaData get dt => x1CobaDuaData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rmTitle.st)),
    );
  }
}
