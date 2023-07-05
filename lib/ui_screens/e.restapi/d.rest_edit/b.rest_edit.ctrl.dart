part of '_index.dart';

class RestEditCtrl {
  init() => logxx.i(RestEditCtrl, '...');

  submit() => _dt.rxForm.submit();

  Future<void> updateUser() async {
    final userx = Userx(
      id: _dt.selectedId.st,
      name: _dt.rxName.st.value,
      email: _dt.rxEmail.st.value,
      gender: _dt.rxGender.st.value ?? '',
      status: _dt.rxStatus.st.value ?? '',
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
