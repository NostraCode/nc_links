part of '_index.dart';

class RestEditCtrl {
  RestEditData get dt => Data.restEdit.st;

  init() {
    logxx.i(RestEditCtrl, '...');
    setControllersValues();
  }

  setControllersValues() {
    var userx = Data.restDetail.st.rxUserFuture.st!;
    dt.rxName.controller.text = userx.name;
    dt.rxEmail.controller.text = userx.email;
    dt.rxGender.value = userx.gender;
    dt.rxStatus.value = userx.status;
  }

  submit() => dt.rxForm.submit();

  Future<void> updateUser() async {
    final userx = Userx(
      id: dt.selectedId.st,
      name: dt.rxName.value,
      email: dt.rxEmail.value,
      gender: dt.rxGender.value,
      status: dt.rxStatus.value,
    );
    try {
      await Serv.userx.updateUser(userx);
      Serv.userx.initUserDetail();
      Serv.userx.updateOneOfUsers(userx);
      await Future.delayed(400.milliseconds);
      RM.navigate.forceBack();
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
