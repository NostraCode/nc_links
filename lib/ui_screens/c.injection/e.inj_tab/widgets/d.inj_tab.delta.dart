part of '../_index.dart';

class InjTabDelta extends StatelessWidget {
  const InjTabDelta({Key? key}) : super(key: key);

  InjTabCtrl get ct => Ctrl.injTab;
  InjTabData get dt => Data.injTab.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Delta'),
            ElevatedButton(
              child: const Text('next'),
              onPressed: () => dt.rxTab.nextView(),
            ),
          ],
        ),
      ),
    );
  }
}
