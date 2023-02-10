part of '_index.dart';

class UserxServ {
  UserxProv get pv => Prov.userx.st;

  init() => logxx.i(UserxServ, '...');

  // ----- ----- ----- ----- ----- ----- ----- ----- -----
  setSelectedId(int id) {
    pv.rxSelectedId.refresh();
    pv.rxSelectedId.setState((s) => id);
  }

  addToList(List<Userx> moreUsers) {
    pv.rxUserList.setState((s) => [...s, ...moreUsers]);
    if (moreUsers.isEmpty) {
      pv.rxIsEnd.setState((s) => true);
    }
  }

  deleteOneOfUsers() {
    pv.rxUserList.setState((s) {
      final i = s.indexWhere((item) => item.id == pv.rxSelectedId.st);
      return s.removeAt(i);
    });
  }

  updateOneOfUsers(Userx user) {
    pv.rxUserList.setState((s) {
      final i = s.indexWhere((item) => item.id == pv.rxSelectedId.st);
      return s[i] = user;
    });
  }

  //* triggered on initstate ----- ----- ----- ----- -----

  Future<dynamic> initUsersLoader() async {
    await pv.rxPage.refresh();
    await pv.rxIsEnd.refresh();
    await pv.rxSelectedId.refresh();
    await pv.rxUserList.refresh();
    pv.rxUsersLoader.stateAsync = pv.rxUsersLoader.setState((s) => handleUsersLoader());
  }

  Future<dynamic> nextUsersLoader() async {
    pv.rxUsersLoader.stateAsync = pv.rxUsersLoader.setState((s) => handleUsersLoader());
  }

  Future<dynamic> handleUsersLoader() async {
    try {
      final initRxLoadMore = await readUsersLoader();
      pv.rxUsersLoader.setToHasData(initRxLoadMore);
    } catch (e) {
      pv.rxUsersLoader.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readUsersLoader() async {
    try {
      pv.rxPage.setState((s) => s + 1);
      final users = await Repo.userx.st.readUsers(pv.rxPage.st);
      return users;
    } catch (e) {
      rethrow;
    }
  }

  //* triggered on initstate ----- ----- ----- ----- -----
  initUserDetail() {
    pv.rxUserDetail.stateAsync = handleUserDetail();
  }

  Future<Userx> handleUserDetail() async {
    try {
      final user = await readUserDetail();
      return user;
    } catch (e) {
      return Fun.handleException(e);
    }
  }

  Future<Userx> readUserDetail() async {
    try {
      final user = await Repo.userx.st.readUser();
      return user;
    } catch (e) {
      rethrow;
    }
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- -----

  Future<void> createUser(Userx user) async {
    try {
      await Repo.userx.st.createUser(user);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateUser(Userx user) async {
    try {
      await Repo.userx.st.updateUser(user);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteUser() async {
    try {
      await Repo.userx.st.deleteUser(pv.rxSelectedId.st);
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> upload(FormData formData) async {
    try {
      final imageUrl = await Repo.userx.st.upload(formData);
      return imageUrl;
    } catch (e) {
      rethrow;
    }
  }
}
