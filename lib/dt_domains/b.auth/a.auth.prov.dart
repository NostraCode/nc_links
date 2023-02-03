part of '_index.dart';

final x1AuthProv = RM.inject<AuthProv>(
  () => AuthProv(),
  debugPrintWhenNotifiedPreMessage: '',
);

class AuthProv {
  final rxUser = RM.injectStream<User?>(
    () => Stream.value(null),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (snap) {
        logxx.wtf(AuthProv, 'user => ${snap.data}');
        x1ChatServ.updateChatUser(snap.data);
      },
    ),
  );
}
