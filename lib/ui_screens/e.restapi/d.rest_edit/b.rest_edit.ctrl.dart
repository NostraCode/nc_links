part of '_index.dart';

final x1RestEditCtrl = RestEditCtrl();

class RestEditCtrl {
  RestEditData get dt => x1RestEditData.st;

  init() {
    loggerx(RestEditCtrl).v('init...');
    setControllersValues();
  }

  setControllersValues() {
    var userx = x1RestDetailData.st.rmUserFuture.st!;
    dt.rmName.controller.text = userx.name;
    dt.rmEmail.controller.text = userx.email;
    dt.rmGender.value = userx.gender;
    dt.rmStatus.value = userx.status;
  }

  submit() => dt.rmForm.submit();

  Future<void> updateUser() async {
    final userx = Userx(
      id: dt.selectedId.st,
      name: dt.rmName.value,
      email: dt.rmEmail.value,
      gender: dt.rmGender.value,
      status: dt.rmStatus.value,
    );
    await x1XuserServ.updateUser(userx);
    x1XuserServ.readUser();
    x1XuserServ.updateOneOfUsers(userx);
    await Future.delayed(400.milliseconds);
    RM.navigate.forceBack();
  }
}
