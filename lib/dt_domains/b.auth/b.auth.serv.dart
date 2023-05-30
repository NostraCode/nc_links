// ignore_for_file: invalid_use_of_visible_for_testing_member

part of '_index.dart';

class AuthServ {
  AuthProv get pv => Prov.auth.st;

  init() {
    logxx.i(AuthServ, '...');

    pv.rxUserApp.initializeState();
  }

  initUserStream() => pv.rxUserStream.initializeState();

  authReload() => pv.rxUserStream.st?.reload();

  addEventCounter() => pv.rxEventCounter.setState((s) => s + 1);

  updateUserApp(User? userStream) {
    if (userStream == null) {
      pv.rxUserApp.st = null;
    } else {
      final old = pv.rxUserApp.st;
      final neo = UserApp(
        uid: userStream.uid,
        displayName: userStream.displayName,
        email: userStream.email,
        photoURL: userStream.photoURL,
        emailVerified: userStream.emailVerified,
        phoneNumber: userStream.phoneNumber,
      );
      if (old == null || old.emailVerified != neo.emailVerified) {
        pv.rxUserApp.st = neo;
      }
    }
  }

  void switchPage() async {
    final location = nav.routeData.location;
    final isInitRoute = (location == Routes.splash) || (location == '/');
    if (!isInitRoute) {
      nav.toAndRemoveUntil(Routes.authSwitch);
    } else {
      logxx.wtf(AuthServ, 'set timer');
      pv.timer?.cancel();
      pv.timer = Timer(3.seconds, () => nav.toAndRemoveUntil(Routes.authSwitch));
      // preventMultipleAsync(() => nav.toAndRemoveUntil(Routes.authSwitch));
    }
  }

  preventMultipleAsync(void Function() callback) {
    logxx.wtf(AuthServ, 'set timer');
    pv.timer?.cancel();
    pv.timer = Timer(3.seconds, callback);
  }

  //! ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      pv.rxEventCounter.refresh();
      pv.rxUserStream.refresh();
      await x1FbAuth.st.createUserWithEmailAndPassword(email, password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      pv.rxEventCounter.refresh();
      pv.rxUserStream.refresh();
      await x1FbAuth.st.signInWithEmailAndPassword(email, password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      pv.rxEventCounter.refresh();
      await x1FbAuth.st.signInWithGoogle();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      pv.rxEventCounter.refresh();
      await x1FbAuth.st.signOut();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await x1FbAuth.st.instance.sendPasswordResetEmail(email: email);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> confirmSmsCode(String code) async {
    try {
      if (PlatformType.isWeb) {
        final confirmationResult = pv.rxConfirmationResult.st;
        if (confirmationResult != null) {
          pv.rxUserCredential.st = await confirmationResult.confirm(code);
        }
      } else {
        validatePhoneAuthCredential(code);
        final phoneAuthCredential = pv.rxPhoneAuthCredential.st;
        if (phoneAuthCredential != null) {
          pv.rxUserCredential.st = await x1FbAuth.st.signInWithCredential(phoneAuthCredential);
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  // phone login for web
  Future<void> signInWithPhoneNumber(String phoneNumber) async {
    try {
      pv.rxConfirmationResult.st = await x1FbAuth.st.signInWithPhoneNumber(phoneNumber);
      goToCodePage();
      setMessage('insert the code on sms');
    } catch (e) {
      rethrow;
    }
  }

  // phone login for mobile
  Future<void> verifyPhoneNumber(String phoneNumber) async {
    try {
      await x1FbAuth.st.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationFailed: (e) => onVerificationFailed(e),
        codeSent: (verificationId, resendToken) => onCodeSent(verificationId, resendToken),
        verificationCompleted: (phoneAuthCred) => onVerificationCompleted(phoneAuthCred),
        codeAutoRetrievalTimeout: (verificationId) => onCodeAutoRetrievalTimeout(verificationId),
        autoRetrievedSmsCodeForTesting: phoneNumber == '+6285211221122' ? '111222' : null,
        timeout: const Duration(seconds: 30),
      );
    } catch (e) {
      rethrow;
    }
  }

  setMessage(String message) {
    logxx.i(AuthServ, message);
    toast(message);
  }

  goToCodePage() {
    nav.backUntil(Routes.phone);
    nav.to(Routes.code);
  }

  onVerificationFailed(FirebaseAuthException e) {
    nav.backUntil(Routes.phone);
    setMessage('verification failed => ${e.code}');
  }

  onCodeAutoRetrievalTimeout(String verificationId) {
    goToCodePage();
    setMessage('auto-retrieve timed out, please insert code manually.');
  }

  onVerificationCompleted(PhoneAuthCredential phoneAuthCredential) {
    pv.rxPhoneAuthCredential.st = phoneAuthCredential;
    pv.rxAutoSmsCode.st = phoneAuthCredential.smsCode;
    goToCodePage();
    setMessage('auto-retrieve success.');
  }

  onCodeSent(String verificationId, int? resendToken) {
    pv.rxResendToken.st = resendToken;
    pv.rxVerificationId.st = verificationId;
    setMessage('code has been sent, try to auto-retrieve.');
  }

  validatePhoneAuthCredential(String code) {
    if (pv.rxPhoneAuthCredential.st == null) {
      final verificationId = pv.rxVerificationId.st;
      if (verificationId != null) {
        pv.rxPhoneAuthCredential.st = PhoneAuthProvider.credential(
          smsCode: code,
          verificationId: verificationId,
        );
      }
    }
  }
}
