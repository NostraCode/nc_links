part of '_index.dart';

class AuthProv {
  final rxUser = RM.injectStream<User?>(
    () => Stream.value(null),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (snap) {
        logxx.wtf(AuthProv, 'user => ${snap.data}');
        Serv.chat.updateChatUser(snap.data);
      },
    ),
  );
}
