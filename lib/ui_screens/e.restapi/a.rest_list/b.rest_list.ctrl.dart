part of '_index.dart';

final x1RestListCtrl = RestListCtrl();

class RestListCtrl {
  RestListData get dt => x1RestListData.st;

  init() => logxx.i(RestListCtrl, '...');

  Future<void> refresh() async {
    await x1UserxServ.initUsersLoader();
    // try {
    //   await x1UserServ.refreshUserList();
    // } catch (obj) {
    //   Fun.handleException(obj);
    // }
  }

  Future<void> loadMore() async {
    await x1UserxServ.nextUsersLoader();
    // try {
    //   await x1UserServ.readUsersLoader();
    // } catch (obj) {
    //   Fun.handleException(obj);
    // }
  }

  select(int id) {
    x1UserxServ.setSelectedId(id);
    nav.to(Routes.restDetail);
    // try {
    //   x1UserServ.setSelectedId(id);
    //   nav.to(Routes.restDetail);
    // } catch (obj) {
    //   Fun.handleException(obj);
    // }
  }
}
