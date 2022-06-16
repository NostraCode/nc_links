part of '_index.dart';

final x1RestDetailCtrl = RestDetailCtrl();

class RestDetailCtrl {
  RestDetailData get dt => x1RestDetailData.st;

  init() => logxx.i(RestDetailCtrl, '...');

  Future<void> refresh() async {
    try {
      x1UserServ.readUser();
    } catch (obj) {
      Fun.handleException(obj);
    }
  }

  Future<void> delete() async {
    try {
      Fun.showOverlayLoading();
      await x1UserServ.deleteUser();
      x1UserServ.deleteOneOfUsers();
      RM.navigate.back();
      await Future.delayed(400.milliseconds);
      RM.navigate.back();
    } catch (obj) {
      RM.navigate.back();
      Fun.handleException(obj);
    }
  }
}
