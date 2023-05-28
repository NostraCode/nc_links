part of '_index.dart';

class OtpCtrl {
  OtpData get dt => Data.otp.st;

  init() {
    logxx.i(OtpCtrl, '...');
    dt.rxPhone.controller.text = '81111122222';
  }

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
      if (PlatformType.isWeb) {
        await Serv.auth.confirmCodeOnWeb(dt.rxCode.value);
      } else {
        logx.wtf(dt.rxCode.value);
        await Serv.auth.confirmCodeOnMobile(dt.rxCode.value);
      }
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
