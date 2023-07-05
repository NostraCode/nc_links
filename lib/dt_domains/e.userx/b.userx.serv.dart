part of '_index.dart';

class UserxServ {
  init() => logxx.i(UserxServ, '...');

  // ----- ----- ----- ----- ----- ----- ----- ----- -----
  setSelectedId(int id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.setState((s) => id);
  }

  addToList(List<Userx> moreUsers) {
    _pv.rxUserList.setState((s) => [...s, ...moreUsers]);
    if (moreUsers.isEmpty) {
      _pv.rxIsEnd.setState((s) => true);
    }
  }

  deleteOneOfUsers() {
    _pv.rxUserList.setState((s) {
      final i = s.indexWhere((item) => item.id == _pv.rxSelectedId.st);
      return s.removeAt(i);
    });
  }

  updateOneOfUsers(Userx user) {
    _pv.rxUserList.setState((s) {
      final i = s.indexWhere((item) => item.id == _pv.rxSelectedId.st);
      return s[i] = user;
    });
  }

  //* triggered on initstate ----- ----- ----- ----- -----

  Future<dynamic> initUsersLoader() async {
    await _pv.rxPage.refresh();
    await _pv.rxIsEnd.refresh();
    await _pv.rxSelectedId.refresh();
    await _pv.rxUserList.refresh();
    _pv.rxUsersLoader.stateAsync = _pv.rxUsersLoader.setState((s) => handleUsersLoader());
  }

  Future<dynamic> nextUsersLoader() async {
    _pv.rxUsersLoader.stateAsync = _pv.rxUsersLoader.setState((s) => handleUsersLoader());
  }

  Future<dynamic> handleUsersLoader() async {
    try {
      final initRxLoadMore = await readUsersLoader();
      _pv.rxUsersLoader.setToHasData(initRxLoadMore);
    } catch (e) {
      _pv.rxUsersLoader.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readUsersLoader() async {
    try {
      _pv.rxPage.setState((s) => s + 1);
      final users = await Repo.userx.st.readUsers(_pv.rxPage.st);
      return users;
    } catch (e) {
      rethrow;
    }
  }

  //* triggered on initstate ----- ----- ----- ----- -----
  initUserDetail() {
    _pv.rxUserDetail.stateAsync = handleUserDetail();
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
      await Repo.userx.st.deleteUser(_pv.rxSelectedId.st);
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
