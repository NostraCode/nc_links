part of '_index.dart';

class AuthProv {
  Timer? timer;

  final rxEventCounter = 0.inj();

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

  final rxUserCredential = RM.inject<UserCredential?>(() => null);

  //! for web
  final rxConfirmationResult = RM.inject<ConfirmationResult?>(
    () => null,
    sideEffects: SideEffects(
      onSetState: (snap) {
        nav.back();
        Dialogs.success(
          titlex: 'Success',
          messagex: 'OTP has been sent to phoneNumber.',
          labelx: 'OK',
          function: () => nav.back(),
        );
      },
    ),
  );

  //! for mobile
  final rxVerificationId = RM.inject<String?>(
    () => null,
    sideEffects: SideEffects(
      onSetState: (snap) {
        logxx.i(AuthProv, 'verificationId => ${snap.data}');
        nav.back();
        Dialogs.success(
          titlex: 'Success',
          messagex: 'OTP has been sent to phoneNumber.',
          labelx: 'OK',
          function: () => nav.back(),
        );
      },
    ),
  );

  //! for mobile
  final rxResendToken = RM.inject<int?>(
    () => null,
    sideEffects: SideEffects(
      onSetState: (snap) {
        logxx.i(AuthProv, 'resendToken => ${snap.data}');
      },
    ),
  );

  //! for mobile
  final rxPhoneAuthCredential = RM.inject<PhoneAuthCredential?>(
    () => null,
    sideEffects: SideEffects(
      onSetState: (snap) {
        final cred = snap.data == null ? 'null' : 'not null';
        logxx.i(AuthProv, 'phoneAuthCredential => $cred');
        logxx.i(AuthProv, 'smsCode => ${snap.data!.smsCode ?? 'null'}');
      },
    ),
  );
}
