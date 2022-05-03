part of '_index.dart';

final x1XuserServ = XuserServ();

class XuserServ {
  XuserData get dt => x1XuserData.st;

  init() => loggerx(XuserServ).v('init...');

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  refreshUsers() {
    dt.rmPage.refresh();
    dt.rmIsEnd.refresh();
    dt.rmSelectedId.refresh();
    dt.rmUserList.refresh();
    readUsers();
  }

  readUsers() {
    dt.rmPage.setState((s) => s + 1);
    dt.rmLoadMore.stateAsync = x1UserRepo.st.readUsers(dt.rmPage.st);
  }

  addToList(List<Userx> moreUsers) {
    dt.rmUserList.setState((s) => [...s, ...moreUsers]);
    if (moreUsers.isEmpty) {
      dt.rmIsEnd.setState((s) => true);
    }
  }

  deleteOneOfUsers() {
    dt.rmUserList.setState((s) {
      final i = s.indexWhere((item) => item.id == dt.rmSelectedId.st);
      return s.removeAt(i);
    });
  }

  updateOneOfUsers(Userx user) {
    dt.rmUserList.setState((s) {
      final i = s.indexWhere((item) => item.id == dt.rmSelectedId.st);
      return s[i] = user;
    });
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  setSelectedId(int id) {
    dt.rmSelectedId.setState((s) => id);
  }

  readUser() {
    dt.rmUserFuture.stateAsync = x1UserRepo.st.readUser();
  }

  Future<void> createUser(Userx user) {
    return x1UserRepo.st.createUser(user);
  }

  Future<void> updateUser(Userx user) {
    return x1UserRepo.st.updateUser(user);
  }

  Future<void> deleteUser() {
    return x1UserRepo.st.deleteUser(dt.rmSelectedId.st);
  }
}
