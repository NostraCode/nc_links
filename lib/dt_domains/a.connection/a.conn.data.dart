part of '_index.dart';

final x1ConnData = RM.inject<ConnData>(
  () => ConnData(),
  debugPrintWhenNotifiedPreMessage: 'ConnData',
);

class ConnData {
  final connx = Connectivity();

  late StreamSubscription<ConnectivityResult> subsConnx;

  final rmIsOnline = false.inj();

  final rmIsShowNotification = false.inj();
}
