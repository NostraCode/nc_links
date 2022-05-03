part of '_index.dart';

class CobaTigaView extends StatelessWidget {
  const CobaTigaView({Key? key}) : super(key: key);

  CobaTigaCtrl get ct => x1CobaTigaCtrl;
  CobaTigaData get dt => x1CobaTigaData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CobaTigaAppbar(),
      ),
      floatingActionButton: const CobaTigaFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CobaTigaCharlie(),
            CobaTigaDelta(),
            CobaTigaEcho(),
          ],
        ),
      ),
    );
  }
}
