part of '_index.dart';

final x1ConnProv = RM.inject<ConnProv>(
  () => ConnProv(),
  debugPrintWhenNotifiedPreMessage: '',
);

class ConnProv {
  final connx = Connectivity();

  late StreamSubscription<ConnectivityResult> subsConnx;

  final rxIsOnline = false.inj();

  final rxIsShowNotification = false.inj();
}
