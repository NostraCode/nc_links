part of '_index.dart';

class OtpCtrl {
  init() => logxx.i(OtpCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  submitPhone() => _dt.rxFormPhone.submit();

  submitCode() => _dt.rxFormCode.submit();

  Future<void> signInWithPhoneNumber() async {
    final phoneNumber = '+62${_dt.rxPhone.value}';
    try {
      if (PlatformType.isWeb) {
        await Serv.auth.signInWithPhoneNumber(phoneNumber);
      } else {
        await Serv.auth.verifyPhoneNumber(phoneNumber);
      }
    } catch (obj) {
      Fun.handleException(obj);
    }
  }

  Future<void> confirmCode() async {
    try {
      await Serv.auth.confirmSmsCode(_dt.rxCode.value);
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
