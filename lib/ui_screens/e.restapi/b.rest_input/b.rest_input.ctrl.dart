part of '_index.dart';

final x1RestInputCtrl = RestInputCtrl();

class RestInputCtrl {
  RestInputData get dt => x1RestInputData.st;

  init() => logxx.i(RestInputCtrl, '...');

  submit() => dt.rxForx.submit();

  Future<void> createUser() async {
    await x1UserServ.createUser(Userx(
      name: dt.rxName.value,
      email: dt.rxEmail.value,
      gender: dt.rxGender.value,
      status: dt.rxStatus.value,
    ));
    x1RestListCtrl.refresh();
    await Future.delayed(400.milliseconds);
    RM.navigate.forceBack();
  }
}
