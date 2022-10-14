part of '../_index.dart';

class FcmSender extends StatelessWidget {
  const FcmSender({Key? key}) : super(key: key);

  FcmCtrl get ct => x1FcmCtrl;
  FcmData get dt => x1FcmData.st;

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
