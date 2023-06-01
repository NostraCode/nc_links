part of '_index.dart';

class PhoneCtrl {
  PhoneData get dt => Data.phone.st;

  init() => logxx.i(PhoneCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  submitPhone() => dt.rxFormPhone.submit();

  Future<void> signInWithPhoneNumber() async {
    final phoneNumber = '+62${dt.rxPhone.value}';
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
