part of '../_index.dart';

class InjTabCharlie extends StatelessWidget {
  const InjTabCharlie({Key? key}) : super(key: key);

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
              onPressed: () => _dt.rxTab.nextView(),
            ),
          ],
        ),
      ),
    );
  }
}
