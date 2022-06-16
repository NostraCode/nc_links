part of '_index.dart';

final x1RestListCtrl = RestListCtrl();

class RestListCtrl {
  RestListData get dt => x1RestListData.st;

  init() => logxx.i(RestListCtrl, '...');

  Future<void> refresh() async {
    try {
      x1UserServ.refreshUsers();
    } catch (obj) {
      Fun.handleException(obj);
    }
  }

  Future<void> loadMore() async {
    try {
      x1UserServ.readUsers();
    } catch (obj) {
      Fun.handleException(obj);
    }
  }

  select(int id) {
    try {
      x1UserServ.setSelectedId(id);
      nav.to(Routes.restDetail);
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
