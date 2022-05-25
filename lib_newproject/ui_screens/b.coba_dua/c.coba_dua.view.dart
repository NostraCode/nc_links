part of '_index.dart';

class CobaDuaView extends StatelessWidget {
  const CobaDuaView({Key? key}) : super(key: key);

  CobaDuaCtrl get ct => x1CobaDuaCtrl;
  CobaDuaData get dt => x1CobaDuaData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CobaDuaAppbar(),
      ),
      floatingActionButton: const CobaDuaFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CobaDuaCharlie(),
            CobaDuaDelta(),
            CobaDuaEcho(),
          ],
        ),
      ),
    );
  }
}
