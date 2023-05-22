part of '_index.dart';

class AuthProv {
  Timer? timer;

  final rxEventCounter = 0.inj();

  final confirmationResult = RM.inject<ConfirmationResult?>(
    () => null,
    // autoDisposeWhenNotUsed: false,
    // sideEffects: SideEffects(
    //   initState: () => Serv.auth.initUserStream(),
    //   onSetState: (snap) {
    //     logxx.wtf(AuthProv, 'userApp => ${snap.data}');
    //     Serv.auth.switchPage();
    //   },
    // ),
  );

  // ConfirmationResult? confirmationResult;

  UserCredential? userCredential;

  final rxUserApp = RM.inject<UserApp?>(
    () => UserApp.init(),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      initState: () => Serv.auth.initUserStream(),
      onSetState: (snap) {
        logxx.wtf(AuthProv, 'userApp => ${snap.data}');
        Serv.auth.switchPage();
      },
    ),
  );

  final rxUserStream = RM.injectStream<User?>(
    () => x1FbAuth.st.instance.userChanges(),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (snap) {
        final data = snap.data;
        logxx.i(AuthProv, data?.phoneNumber ?? 'no phone');
        Serv.auth.addEventCounter();
        Serv.auth.updateUserApp(snap.data);
        // Serv.chat.updateChatUser(snap.data);
      },
    ),
  );
}
