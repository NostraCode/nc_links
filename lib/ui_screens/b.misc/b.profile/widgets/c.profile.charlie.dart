part of '../_index.dart';

class ProfileC extends StatelessWidget {
  const ProfileC({Key? key}) : super(key: key);

  ProfileCtrl get ct => Ctrl.profile;
  ProfileData get dt => Data.profile.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(() => Text('${dt.rxInt.st}'));
  }
}
