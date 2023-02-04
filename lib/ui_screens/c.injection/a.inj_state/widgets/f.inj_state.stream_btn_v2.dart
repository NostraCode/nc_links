part of '../_index.dart';

class InjStateStreamBtnV2 extends StatelessWidget {
  const InjStateStreamBtnV2({Key? key}) : super(key: key);

  InjStateCtrl get ct => Ctrl.injState;
  InjStateData get dt => Data.injState.st;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OnBuilder<String>.data(
          listenTo: dt.rxSubsStatus,
          builder: (data) {
            Icon icon;
            Function() func;

            switch (data) {
              case 'pause':
                icon = const Icon(Icons.play_arrow, color: Colors.orange);
                func = () => ct.resume();
                break;
              case 'start':
                icon = const Icon(Icons.pause, color: Colors.orange);
                func = () => ct.pause();
                break;
              case 'resume':
                icon = const Icon(Icons.pause, color: Colors.orange);
                func = () => ct.pause();
                break;
              default:
                icon = const Icon(Icons.play_arrow, color: Colors.green);
                func = () => ct.start();
            }

            return IconButton(
              icon: icon,
              onPressed: func,
            );
          },
        ),
        OnBuilder<String>.data(
          listenTo: dt.rxSubsStatus,
          builder: (data) {
            return IconButton(
              icon: Icon(
                Icons.stop,
                color: data == 'stop' ? null : Colors.red,
              ),
              onPressed: data == 'stop' ? null : () => ct.stop(),
            );
          },
        ),
      ],
    );
  }
}
