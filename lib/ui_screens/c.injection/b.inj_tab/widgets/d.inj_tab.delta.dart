part of '../_index.dart';

class InjTabDelta extends StatelessWidget {
  const InjTabDelta({Key? key}) : super(key: key);

  InjTabCtrl get ct => x1InjTabCtrl;
  InjTabData get dt => x1InjTabData.st;

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
