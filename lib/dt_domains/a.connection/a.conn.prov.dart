part of '_index.dart';

class ConnProv {
  final connx = Connectivity();

  late StreamSubscription<ConnectivityResult> subsConnx;

  final rxIsOnline = false.inj();

  final rxIsShowNotification = false.inj();
}
