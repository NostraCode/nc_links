part of '_index.dart';

class OtpCtrl {
  OtpData get dt => Data.otp.st;

  init() => logxx.i(OtpCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  submitPhone() => dt.rxFormPhone.submit();

  submitCode() => dt.rxFormCode.submit();

  Future<void> signInWithPhoneNumber() async {
    final phoneNumber = '+62${dt.rxPhone.value}';
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
      await Serv.auth.confirmSmsCode(dt.rxCode.value);
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
