part of '../_index.dart';

class FcmSubscriber extends StatelessWidget {
  const FcmSubscriber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          child: const Text('Subscribe'),
          onPressed: () async => await FirebaseMessaging.instance.subscribeToTopic('myTopic'),
        ),
        const SizedBoxW(10),
        ElevatedButton(
          child: const Text('Unsubscribe'),
          onPressed: () async => await FirebaseMessaging.instance.unsubscribeFromTopic('myTopic'),
        ),
      ],
    );
  }
}
