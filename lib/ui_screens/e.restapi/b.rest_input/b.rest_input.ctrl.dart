part of '_index.dart';

final x1RestInputCtrl = RestInputCtrl();

class RestInputCtrl {
  RestInputData get dt => x1RestInputData.st;

  init() => loggerx(RestInputCtrl).v('init...');

  submit() => dt.rmForm.submit();

  Future<void> createUser() async {
    await x1XuserServ.createUser(Userx(
      name: dt.rmName.value,
      email: dt.rmEmail.value,
      gender: dt.rmGender.value,
      status: dt.rmStatus.value,
    ));
    x1RestListCtrl.refresh();
    await Future.delayed(400.milliseconds);
    RM.navigate.forceBack();
  }
}
