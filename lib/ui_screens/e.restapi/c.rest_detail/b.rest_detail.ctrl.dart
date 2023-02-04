part of '_index.dart';

class RestDetailCtrl {
  RestDetailData get dt => Data.restDetail.st;

  init() => logxx.i(RestDetailCtrl, '...');

  Future<void> refresh() async {
    try {
      await Serv.userx.readUserDetail();
    } catch (obj) {
      Fun.handleException(obj);
    }
  }

  Future<void> delete() async {
    try {
      Fun.showOverlayLoading();
      await Serv.userx.deleteUser();
      Serv.userx.deleteOneOfUsers();
      RM.navigate.back();
      await Future.delayed(400.milliseconds);
      RM.navigate.back();
    } catch (obj) {
      RM.navigate.back();
      Fun.handleException(obj);
    }
  }
}
