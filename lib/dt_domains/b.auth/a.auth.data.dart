part of '_index.dart';

final x1AuthData = RM.inject<AuthData>(
  () => AuthData(),
  debugPrintWhenNotifiedPreMessage: '',
);

class AuthData {
  final rxUser = RM.injectStream<User?>(
    () => Stream.value(null),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (snap) {
        logxx.wtf(AuthData, 'user => ${snap.data}');
        x1ChatServ.updateChatUser(snap.data);
      },
    ),
  );
}
