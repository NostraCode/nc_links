part of '_index.dart';

class CobaSatuView extends StatelessWidget {
  const CobaSatuView({Key? key}) : super(key: key);

  CobaSatuCtrl get ct => x1CobaSatuCtrl;
  CobaSatuData get dt => x1CobaSatuData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CobaSatuAppbar(),
      ),
      floatingActionButton: const CobaSatuFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CobaSatuCharlie(),
            CobaSatuDelta(),
            CobaSatuEcho(),
          ],
        ),
      ),
    );
  }
}
