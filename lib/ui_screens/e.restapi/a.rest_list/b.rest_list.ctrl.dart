part of '_index.dart';

final x1RestListCtrl = RestListCtrl();

class RestListCtrl {
  RestListData get dt => x1RestListData.st;

  init() => loggerx(RestListCtrl).v('init...');

  Future<void> refresh() async {
    x1XuserServ.refreshUsers();
  }

  Future<void> loadMore() async {
    x1XuserServ.readUsers();
  }

  select(int id) {
    x1XuserServ.setSelectedId(id);
    nav.to(Routes.restDetail);
  }
}
