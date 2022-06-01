part of '../_index.dart';

class InjTabCharlie extends StatelessWidget {
  const InjTabCharlie({Key? key}) : super(key: key);

  InjTabCtrl get ct => x1InjTabCtrl;
  InjTabData get dt => x1InjTabData.st;

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
