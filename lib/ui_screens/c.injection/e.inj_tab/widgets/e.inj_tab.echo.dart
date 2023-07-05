part of '../_index.dart';

class InjTabEcho extends StatelessWidget {
  const InjTabEcho({Key? key}) : super(key: key);

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
              onPressed: () => _dt.rxTab.previousView(),
            ),
            ElevatedButton(
              child: const Text('first'),
              onPressed: () => _dt.rxTab.animateTo(0),
            ),
          ],
        ),
      ),
    );
  }
}
