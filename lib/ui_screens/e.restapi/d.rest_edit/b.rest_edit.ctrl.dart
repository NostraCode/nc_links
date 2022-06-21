part of '_index.dart';

final x1RestEditCtrl = RestEditCtrl();

class RestEditCtrl {
  RestEditData get dt => x1RestEditData.st;

  init() {
    logxx.i(RestEditCtrl, '...');
    setControllersValues();
  }

  setControllersValues() {
    var userx = x1RestDetailData.st.rxUserFuture.st!;
    dt.rxName.controller.text = userx.name;
    dt.rxEmail.controller.text = userx.email;
    dt.rxGender.value = userx.gender;
    dt.rxStatus.value = userx.status;
  }

  submit() => dt.rxForm.submit();

  Future<void> updateUser() async {
    final userx = User(
      id: dt.selectedId.st,
      name: dt.rxName.value,
      email: dt.rxEmail.value,
      gender: dt.rxGender.value,
      status: dt.rxStatus.value,
    );
    try {
      await x1UserServ.updateUser(userx);
      x1UserServ.initUserDetail();
      x1UserServ.updateOneOfUsers(userx);
      await Future.delayed(400.milliseconds);
      RM.navigate.forceBack();
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
