part of '_index.dart';

final x1FcmProv = RM.inject<FcmProv>(
  () => FcmProv(),
  debugPrintWhenNotifiedPreMessage: '',
);

class FcmProv {
  late final FirebaseMessaging messaging;

  final rxTotalNotifications = 0.inj();

  final rxPushNotification = RM.inject<PushNotification?>(() => null);
}
