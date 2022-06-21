part of '_index.dart';

final x1RestInputCtrl = RestInputCtrl();

class RestInputCtrl {
  RestInputData get dt => x1RestInputData.st;

  init() => logxx.i(RestInputCtrl, '...');

  submit() => dt.rxForm.submit();

  Future<void> createUser() async {
    final userx = User(
      name: dt.rxName.value,
      email: dt.rxEmail.value,
      gender: dt.rxGender.value,
      status: dt.rxStatus.value,
    );
    try {
      await x1UserServ.createUser(userx);
      x1RestListCtrl.refresh();
      await Future.delayed(400.milliseconds);
      RM.navigate.forceBack();
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
