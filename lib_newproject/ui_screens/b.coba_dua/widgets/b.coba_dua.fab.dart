part of '../_index.dart';

class CobaDuaFab extends StatelessWidget {
  const CobaDuaFab({Key? key}) : super(key: key);

  CobaDuaCtrl get ct => x1CobaDuaCtrl;
  CobaDuaData get dt => x1CobaDuaData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
