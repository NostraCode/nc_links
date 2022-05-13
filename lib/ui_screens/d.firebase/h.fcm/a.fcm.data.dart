part of '_index.dart';

final x1FcmData = RM.inject<FcmData>(
  () => FcmData(),
  debugPrintWhenNotifiedPreMessage: 'FcmData',
  sideEffects: SideEffects(initState: () => x1FcmCtrl.init()),
);

class FcmData {
  final rmTitle = 'FCM'.inj();

  final rmInt = 0.inj();

  final rmTopic = 'myTopic'.inj();

  final serverKey =
      'AAAAwnFoI0E:APA91bEPWToAwk6NMO40Qn_TYqUICe96vO4-Q3hVAzsDsYS495OSTfTtq7Vqd2pYOb61kNqc2F2EsoFJP7elh_KxIPh0gYU8kOzr-j7aLkkgQY-mGQ5NxMTFMwgYrky5WtLiEwOB-MX6';
}
