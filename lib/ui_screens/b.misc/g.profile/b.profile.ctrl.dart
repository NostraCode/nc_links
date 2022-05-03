part of '_index.dart';

final x1ProfileCtrl = ProfileCtrl();

class ProfileCtrl {
  ProfileData get dt => x1ProfileData.st;

  init() => loggerx(ProfileCtrl).v('init...');

  action() {
    dt.rmInt.st = dt.rmInt.st + 1;
  }
}
