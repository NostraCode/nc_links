part of '_index.dart';

class InjAnimView extends StatelessWidget {
  const InjAnimView({Key? key}) : super(key: key);

  InjAnimCtrl get ct => x1InjAnimCtrl;
  InjAnimData get dt => x1InjAnimData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjAnimAppbar(),
      ),
      floatingActionButton: const InjAnimFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Expanded(
              child: Center(
                child: InjAnimCharlie(),
              ),
            ),
            // Expanded(
            //   child: Center(
            //     child: InjAnimDelta(),
            //   ),
            // ),
            // Expanded(
            //   child: Center(
            //     child: InjAnimEcho(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
