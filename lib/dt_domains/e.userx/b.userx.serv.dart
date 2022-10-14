part of '_index.dart';

final x1UserxServ = UserxServ();

class UserxServ {
  UserxData get dt => x1UserxData.st;

  init() => logxx.i(UserxServ, '...');

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
      final users = await x1UserxRepo.st.readUsers(dt.rxPage.st);
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
      final user = await x1UserxRepo.st.readUser();
      return user;
    } catch (e) {
      rethrow;
    }
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  Future<dynamic> createUser(Userx user) async {
    try {
      await x1UserxRepo.st.createUser(user);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> updateUser(Userx user) async {
    try {
      await x1UserxRepo.st.updateUser(user);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> deleteUser() async {
    try {
      await x1UserxRepo.st.deleteUser(dt.rxSelectedId.st);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> upload(FormData formData) async {
    try {
      final imageUrl = await x1UserxRepo.st.upload(formData);
      return imageUrl;
    } catch (e) {
      rethrow;
    }
  }
}
