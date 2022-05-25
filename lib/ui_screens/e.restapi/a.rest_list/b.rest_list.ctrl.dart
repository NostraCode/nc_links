part of '_index.dart';

final x1RestListCtrl = RestListCtrl();

class RestListCtrl {
  RestListData get dt => x1RestListData.st;

  init() => logxx.i(RestListCtrl, '...');

  Future<void> refresh() async {
    x1UserServ.refreshUsers();
  }

  Future<void> loadMore() async {
    x1UserServ.readUsers();
  }

  select(int id) {
    x1UserServ.setSelectedId(id);
    nav.to(Routes.restDetail);
  }
}
