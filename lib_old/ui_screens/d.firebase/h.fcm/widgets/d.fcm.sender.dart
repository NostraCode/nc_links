part of '../_index.dart';

class FcmSender extends StatelessWidget {
  const FcmSender({Key? key}) : super(key: key);

  FcmCtrl get ct => Ctrl.fcm;
  FcmData get dt => Data.fcm.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('title: fcm by api ${dt.rxInt.st}'),
          Text('body: its working fine ${dt.rxInt.st}'),
        ],
      ),
    );
  }
}
