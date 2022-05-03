part of '../_index.dart';

class InjStateStreamBtnV1 extends StatelessWidget {
  const InjStateStreamBtnV1({Key? key}) : super(key: key);

  InjStateCtrl get ct => x1InjStateCtrl;
  InjStateData get dt => x1InjStateData.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          child: const Text('start'),
          onPressed: () => ct.start(),
        ),
        ElevatedButton(
          child: const Text('stop'),
          onPressed: () => ct.stop(),
        ),
        ElevatedButton(
          child: const Text('pause'),
          onPressed: () => ct.pause(),
        ),
        ElevatedButton(
          child: const Text('resume'),
          onPressed: () => ct.resume(),
        ),
      ],
    );
  }
}
