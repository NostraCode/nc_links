part of '_index.dart';

class RestEditCtrl {
  RestEditData get dt => Data.restEdit.st;

  init() => logxx.i(RestEditCtrl, '...');

  submit() => dt.rxForm.submit();

  Future<void> updateUser() async {
    final userx = Userx(
      id: dt.selectedId.st,
      name: dt.rxName.st.value,
      email: dt.rxEmail.st.value,
      gender: dt.rxGender.st.value ?? '',
      status: dt.rxStatus.st.value ?? '',
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
