part of '../_index.dart';

class InjTabCharlie extends StatelessWidget {
  const InjTabCharlie({Key? key}) : super(key: key);

  InjTabCtrl get ct => Ctrl.injTab;
  InjTabData get dt => Data.injTab.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Charlie'),
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
