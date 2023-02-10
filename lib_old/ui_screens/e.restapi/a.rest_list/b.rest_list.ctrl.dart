part of '_index.dart';

class RestListCtrl {
  RestListData get dt => Data.restList.st;

  init() => logxx.i(RestListCtrl, '...');

  Future<void> refresh() async {
    await Serv.userx.initUsersLoader();
    // try {
    //   await x1UserServ.refreshUserList();
    // } catch (obj) {
    //   Fun.handleException(obj);
    // }
  }

  Future<void> loadMore() async {
    await Serv.userx.nextUsersLoader();
    // try {
    //   await x1UserServ.readUsersLoader();
    // } catch (obj) {
    //   Fun.handleException(obj);
    // }
  }

  select(int id) {
    Serv.userx.setSelectedId(id);
    nav.to(Routes.restDetail);
    // try {
    //   x1UserServ.setSelectedId(id);
    //   nav.to(Routes.restDetail);
    // } catch (obj) {
    //   Fun.handleException(obj);
    // }
  }
}
