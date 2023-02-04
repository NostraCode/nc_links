part of '../_index.dart';

class InjTabEcho extends StatelessWidget {
  const InjTabEcho({Key? key}) : super(key: key);

  InjTabCtrl get ct => Ctrl.injTab;
  InjTabData get dt => Data.injTab.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Echo'),
            ElevatedButton(
              child: const Text('previouse'),
              onPressed: () => dt.rxTab.previousView(),
            ),
            ElevatedButton(
              child: const Text('first'),
              onPressed: () => dt.rxTab.animateTo(0),
            ),
          ],
        ),
      ),
    );
  }
}
