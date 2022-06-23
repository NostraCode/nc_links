part of '_index.dart';

final x1FcmData = RM.inject<FcmData>(
  () => FcmData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1FcmCtrl.init()),
);

class FcmData {
  final rxTitle = 'FCM'.inj();

  final rxInt = 0.inj();

  final rxTopic = 'myTopic'.inj();
}
