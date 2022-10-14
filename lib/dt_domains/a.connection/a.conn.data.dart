part of '_index.dart';

final x1ConnData = RM.inject<ConnData>(
  () => ConnData(),
  debugPrintWhenNotifiedPreMessage: '',
);

class ConnData {
  final connx = Connectivity();

  late StreamSubscription<ConnectivityResult> subsConnx;

  final rxIsOnline = false.inj();

  final rxIsShowNotification = false.inj();
}
