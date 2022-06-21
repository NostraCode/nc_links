part of '_index.dart';

final x1UserServ = XuserServ();

class XuserServ {
  UserData get dt => x1UserData.st;

  init() => logxx.i(XuserServ, '...');

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  // Future<dynamic> refreshUserList() async {
  //   await dt.rxPage.refresh();
  //   await dt.rxIsEnd.refresh();
  //   await dt.rxSelectedId.refresh();
  //   await dt.rxUserList.refresh();

  //   initUsersLoader();
  //   logx.s(dt.rxPage.st.toString());
  // }

  setSelectedId(int id) {
    dt.rxSelectedId.refresh();
    dt.rxSelectedId.setState((s) => id);
  }

  addToList(List<User> moreUsers) {
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

  updateOneOfUsers(User user) {
    dt.rxUserList.setState((s) {
      final i = s.indexWhere((item) => item.id == dt.rxSelectedId.st);
      return s[i] = user;
    });
  }

  //* triggered on initstate ----- ----- ----- ----- -----

  Future<dynamic> initUsersLoader() async {
    await dt.rxPage.refresh();
    await dt.rxIsEnd.refresh();
    await dt.rxSelectedId.refresh();
    await dt.rxUserList.refresh();

    // logx.s(dt.rxPage.st.toString());
    dt.rxUsersLoader.stateAsync =
        dt.rxUsersLoader.setState((s) => handleUsersLoader());
  }

  Future<dynamic> nextUsersLoader() async {
    // logx.s(dt.rxPage.st.toString());
    dt.rxUsersLoader.stateAsync =
        dt.rxUsersLoader.setState((s) => handleUsersLoader());
  }

  Future<dynamic> handleUsersLoader() async {
    try {
      final initRxLoadMore = await readUsersLoader();
      dt.rxUsersLoader.setToHasData(initRxLoadMore);
    } catch (e) {
      dt.rxUsersLoader.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readUsersLoader() async {
    try {
      dt.rxPage.setState((s) => s + 1);
      final users = await x1UserRepo.st.readUsers(dt.rxPage.st);
      return users;
    } catch (e) {
      rethrow;
    }
  }

  //* triggered on initstate ----- ----- ----- ----- -----

  initUserDetail() {
    dt.rxUserDetail.stateAsync =
        dt.rxUserDetail.setState((s) => handleUserDetail());
  }

  Future<dynamic> handleUserDetail() async {
    try {
      final user = await readUserDetail();
      dt.rxUserDetail.setToHasData(user);
    } catch (e) {
      dt.rxUserDetail.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readUserDetail() async {
    try {
      final user = await x1UserRepo.st.readUser();
      return user;
    } catch (e) {
      rethrow;
    }
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  Future<dynamic> createUser(User user) async {
    try {
      await x1UserRepo.st.createUser(user);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> updateUser(User user) async {
    try {
      await x1UserRepo.st.updateUser(user);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> deleteUser() async {
    try {
      await x1UserRepo.st.deleteUser(dt.rxSelectedId.st);
    } catch (e) {
      rethrow;
    }
  }
}
