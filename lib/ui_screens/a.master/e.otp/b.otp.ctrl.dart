part of '_index.dart';

class OtpCtrl {
  OtpData get dt => Data.otp.st;

  init() => logxx.i(OtpCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  submitPhone() => dt.rxFormPhone.submit();

  submitCode() => dt.rxFormCode.submit();

  Future<void> signInWithPhoneNumber() async {
    try {
      await Serv.auth.signInWithPhoneNumber('+62${dt.rxPhone.value}');
      Dialogs.success(
        titlex: 'Success',
        messagex: 'OTP has been sent to phoneNumber.',
        labelx: 'OK',
        function: () => nav.back(),
      );
    } catch (obj) {
      Fun.handleException(obj);
    }
  }

  Future<void> confirmCode() async {
    try {
      await Serv.auth.confirmCode(dt.rxCode.value);
      Dialogs.success(
        titlex: 'Success',
        messagex: 'wait for something',
        labelx: 'OK',
        function: () => nav.back(),
      );
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
// 85171543248