part of '_index.dart';

class CobaView extends StatelessWidget {
  const CobaView({Key? key}) : super(key: key);

  CobaCtrl get ct => Ctrl.coba;
  CobaData get dt => Data.coba.st;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CobaAppbar(),
      ),
      floatingActionButton: CobaFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CobaCharlie(),
            CobaDelta(),
            CobaEcho(),
          ],
        ),
      ),
    );
  }
}
