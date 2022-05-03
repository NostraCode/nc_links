part of '../_index.dart';

class ProfileC extends StatelessWidget {
  const ProfileC({Key? key}) : super(key: key);

  ProfileCtrl get ct => x1ProfileCtrl;
  ProfileData get dt => x1ProfileData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(() => Text('${dt.rmInt.st}'));
  }
}
