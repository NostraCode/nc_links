part of '../_index.dart';

class FbAuthFab extends StatelessWidget {
  const FbAuthFab({Key? key}) : super(key: key);

  FbAuthCtrl get ct => x1FbAuthCtrl;
  FbAuthData get dt => x1FbAuthData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
