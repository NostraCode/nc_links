part of '../_index.dart';

class InjTabDelta extends StatelessWidget {
  const InjTabDelta({Key? key}) : super(key: key);

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
              onPressed: () => _dt.rxTab.nextView(),
            ),
          ],
        ),
      ),
    );
  }
}
