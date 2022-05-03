part of '../_index.dart';

class ProfileFab extends StatelessWidget {
  const ProfileFab({Key? key}) : super(key: key);

  ProfileCtrl get ct => x1ProfileCtrl;
  ProfileData get dt => x1ProfileData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
