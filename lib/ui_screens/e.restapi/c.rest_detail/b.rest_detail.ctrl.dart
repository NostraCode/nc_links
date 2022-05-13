part of '_index.dart';

final x1RestDetailCtrl = RestDetailCtrl();

class RestDetailCtrl {
  RestDetailData get dt => x1RestDetailData.st;

  init() => loggerx(RestDetailCtrl).v('init...');

  Future<void> refresh() async {
    x1UserServ.readUser();
  }

  Future<void> delete() async {
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    await x1UserServ.deleteUser();
    x1UserServ.deleteOneOfUsers();
    RM.navigate.back();
    await Future.delayed(400.milliseconds);
    RM.navigate.back();
  }
}
