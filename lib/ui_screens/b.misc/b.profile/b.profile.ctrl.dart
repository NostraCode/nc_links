part of '_index.dart';

class ProfileCtrl {
  ProfileData get dt => Data.profile.st;

  init() => logxx.i(ProfileCtrl, '...');

  action() {
    dt.rxInt.st = dt.rxInt.st + 1;
  }
}
