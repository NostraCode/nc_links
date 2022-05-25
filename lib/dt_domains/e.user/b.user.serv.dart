part of '_index.dart';

final x1UserServ = XuserServ();

class XuserServ {
  UserData get dt => x1UserData.st;

  init() => logxx.i(XuserServ, '...');

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  refreshUsers() {
    dt.rxPage.refresh();
    dt.rxIsEnd.refresh();
    dt.rxSelectedId.refresh();
    dt.rxUserList.refresh();
    readUsers();
  }

  readUsers() {
    dt.rxPage.setState((s) => s + 1);
    dt.rxLoadMore.stateAsync = x1UserRepo.st.readUsers(dt.rxPage.st);
  }

  addToList(List<Userx> moreUsers) {
    dt.rxUserList.setState((s) => [...s, ...moreUsers]);
    if (moreUsers.isEmpty) {
      dt.rxIsEnd.setState((s) => true);
    }
  }

  deleteOneOfUsers() {
    dt.rxUserList.setState((s) {
      final i = s.indexWhere((item) => item.id == dt.rxSelectedId.st);
      return s.removeAt(i);
    });
  }

  updateOneOfUsers(Userx user) {
    dt.rxUserList.setState((s) {
      final i = s.indexWhere((item) => item.id == dt.rxSelectedId.st);
      return s[i] = user;
    });
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  setSelectedId(int id) {
    dt.rxSelectedId.refresh();
    dt.rxSelectedId.setState((s) => id);
  }

  readUser() {
    dt.rxUserFuture.stateAsync = x1UserRepo.st.readUser();
  }

  Future<void> createUser(Userx user) {
    return x1UserRepo.st.createUser(user);
  }

  Future<void> updateUser(Userx user) {
    return x1UserRepo.st.updateUser(user);
  }

  Future<void> deleteUser() {
    return x1UserRepo.st.deleteUser(dt.rxSelectedId.st);
  }
}
