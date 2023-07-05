part of '_index.dart';

class PhoneCtrl {
  init() => logxx.i(PhoneCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  submitPhone() => _dt.rxFormPhone.submit();

  Future<void> signInWithPhoneNumber() async {
    final phoneNumber = '+62${_dt.rxPhone.value}';
    try {
      Fun.showOverlayLoading();
      if (PlatformType.isWeb) {
        await Serv.auth.signInWithPhoneNumber(phoneNumber);
      } else {
        await Serv.auth.verifyPhoneNumber(phoneNumber);
      }
    } catch (obj) {
      nav.back();
      Fun.handleException(obj);
    }
  }
}
