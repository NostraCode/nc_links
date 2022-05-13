part of '_index.dart';

final x1FcmData = RM.inject<FcmData>(
  () => FcmData(),
  debugPrintWhenNotifiedPreMessage: 'FcmData',
);

class FcmData {
  late final FirebaseMessaging messaging;

  final rmTotalNotifications = 0.inj();

  final rmPushNotification = RM.inject<PushNotification?>(() => null);
}
