part of '../_index.dart';

class FcmSender extends StatelessWidget {
  const FcmSender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('title: fcm by api ${_dt.rxInt.st}'),
          Text('body: its working fine ${_dt.rxInt.st}'),
        ],
      ),
    );
  }
}
