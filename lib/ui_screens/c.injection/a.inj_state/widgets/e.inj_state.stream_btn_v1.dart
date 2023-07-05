part of '../_index.dart';

class InjStateStreamBtnV1 extends StatelessWidget {
  const InjStateStreamBtnV1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          child: const Text('start'),
          onPressed: () => _ct.start(),
        ),
        ElevatedButton(
          child: const Text('stop'),
          onPressed: () => _ct.stop(),
        ),
        ElevatedButton(
          child: const Text('pause'),
          onPressed: () => _ct.pause(),
        ),
        ElevatedButton(
          child: const Text('resume'),
          onPressed: () => _ct.resume(),
        ),
      ],
    );
  }
}
