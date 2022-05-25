part of '_index.dart';

final x1ProfileCtrl = ProfileCtrl();

class ProfileCtrl {
  ProfileData get dt => x1ProfileData.st;

  init() => logxx.i(ProfileCtrl, '...');

  action() {
    dt.rxInt.st = dt.rxInt.st + 1;
  }
}
