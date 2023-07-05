// ignore_for_file: invalid_use_of_visible_for_testing_member

part of '_index.dart';

class AuthServ {
  init() {
    logxx.i(AuthServ, '...');

    _pv.rxUserApp.initializeState();
  }

  initUserStream() => _pv.rxUserStream.initializeState();

  authReload() => _pv.rxUserStream.st?.reload();

  addEventCounter() => _pv.rxEventCounter.setState((s) => s + 1);

  updateUserApp(User? userStream) {
    if (userStream == null) {
      _pv.rxUserApp.st = null;
    } else {
      final old = _pv.rxUserApp.st;
      final neo = UserApp(
        uid: userStream.uid,
        displayName: userStream.displayName,
        email: userStream.email,
        photoURL: userStream.photoURL,
        emailVerified: userStream.emailVerified,
        phoneNumber: userStream.phoneNumber,
      );
      if (old == null || old.emailVerified != neo.emailVerified) {
        _pv.rxUserApp.st = neo;
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
      _pv.timer?.cancel();
      _pv.timer = Timer(3.seconds, () => nav.toAndRemoveUntil(Routes.authSwitch));
      // preventMultipleAsync(() => nav.toAndRemoveUntil(Routes.authSwitch));
    }
  }

  preventMultipleAsync(void Function() callback) {
    logxx.wtf(AuthServ, 'set timer');
    _pv.timer?.cancel();
    _pv.timer = Timer(3.seconds, callback);
  }

  //! ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      _pv.rxEventCounter.refresh();
      _pv.rxUserStream.refresh();
      await x1FbAuth.st.createUserWithEmailAndPassword(email, password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      _pv.rxEventCounter.refresh();
      _pv.rxUserStream.refresh();
      await x1FbAuth.st.signInWithEmailAndPassword(email, password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      _pv.rxEventCounter.refresh();
      await x1FbAuth.st.signInWithGoogle();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      _pv.rxEventCounter.refresh();
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
        final confirmationResult = _pv.rxConfirmationResult.st;
        if (confirmationResult != null) {
          _pv.rxUserCredential.st = await confirmationResult.confirm(code);
        }
      } else {
        checkPhoneAuthCredential(code);
        final phoneAuthCredential = _pv.rxPhoneAuthCredential.st;
        if (phoneAuthCredential != null) {
          _pv.rxUserCredential.st = await x1FbAuth.st.signInWithCredential(phoneAuthCredential);
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  // phone login for web
  Future<void> signInWithPhoneNumber(String phoneNumber) async {
    try {
      _pv.rxConfirmationResult.st = await x1FbAuth.st.signInWithPhoneNumber(phoneNumber);
      toNextPage('insert the code on sms');
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

  onVerificationFailed(FirebaseAuthException e) {
    nav.back();
    Fun.handleException(e);
  }

  toNextPage(String message) async {
    nav.to(Routes.code);
    await Future.delayed(800.milliseconds);
    Fun.showToastX(message);
  }

  onCodeAutoRetrievalTimeout(String verificationId) {
    toNextPage('auto-retrieve timed out, please insert code manually.');
  }

  onVerificationCompleted(PhoneAuthCredential phoneAuthCredential) {
    _pv.rxPhoneAuthCredential.st = phoneAuthCredential;
    _pv.rxAutoSmsCode.st = phoneAuthCredential.smsCode;
    toNextPage('auto-retrieve success.');
  }

  onCodeSent(String verificationId, int? resendToken) {
    _pv.rxResendToken.st = resendToken;
    _pv.rxVerificationId.st = verificationId;
    Fun.showToastX('code has been sent, try to auto-retrieve.');
  }

  checkPhoneAuthCredential(String code) {
    if (_pv.rxPhoneAuthCredential.st == null) {
      final verificationId = _pv.rxVerificationId.st;
      if (verificationId != null) {
        _pv.rxPhoneAuthCredential.st = PhoneAuthProvider.credential(
          smsCode: code,
          verificationId: verificationId,
        );
      }
    }
  }
}
