part of '../_index.dart';

class InjStateStream extends StatelessWidget {
  const InjStateStream({Key? key}) : super(key: key);

  InjStateCtrl get ct => Ctrl.injState;
  InjStateData get dt => Data.injState.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "note => state on service's data",
          style: TextStyle(color: Colors.orange),
        ),
        const SizedBoxH(50),
        const InjStateStreamBtnV1(),
        const SizedBoxH(50),
        OnBuilder<int>.orElse(
          listenTo: dt.rxIntStream,
          onWaiting: () => const CircularProgressIndicator(),
          onIdle: () => const Text('idle'),
          orElse: (data) => Text('$data', textScaleFactor: 2),
        ),
        const SizedBoxH(50),
        const InjStateStreamBtnV2(),
      ],
    );
  }
}
