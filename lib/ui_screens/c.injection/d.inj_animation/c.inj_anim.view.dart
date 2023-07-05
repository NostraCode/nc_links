part of '_index.dart';

class InjAnimView extends StatelessWidget {
  const InjAnimView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjAnimAppbar(),
      ),
      floatingActionButton: InjAnimFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
