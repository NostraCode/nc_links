part of '_index.dart';

class FcmProv {
  late final FirebaseMessaging messaging;

  final rxTotalNotifications = 0.inj();

  final rxPushNotification = RM.inject<PushNotification?>(() => null);
}
