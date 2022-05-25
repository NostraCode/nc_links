part of '_index.dart';

final x1AuthData = RM.inject<AuthData>(
  () => AuthData(),
  debugPrintWhenNotifiedPreMessage: '',
);

class AuthData {
  late StreamSubscription<User?> subsAuth;

  final rxUser = RM.inject<User?>(
    () => null,
    autoDisposeWhenNotUsed: false,
  );
}
