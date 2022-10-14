part of '_index.dart';

final x1FcmData = RM.inject<FcmData>(
  () => FcmData(),
  debugPrintWhenNotifiedPreMessage: '',
);

class FcmData {
  late final FirebaseMessaging messaging;

  final rxTotalNotifications = 0.inj();

  final rxPushNotification = RM.inject<PushNotification?>(() => null);
}
