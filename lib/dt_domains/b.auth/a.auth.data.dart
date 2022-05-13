part of '_index.dart';

final x1AuthData = RM.inject<AuthData>(
  () => AuthData(),
  debugPrintWhenNotifiedPreMessage: 'AuthData',
);

class AuthData {
  late StreamSubscription<User?> subsAuth;

  final rmUser = RM.inject<User?>(
    () => null,
    autoDisposeWhenNotUsed: false,
  );
}
