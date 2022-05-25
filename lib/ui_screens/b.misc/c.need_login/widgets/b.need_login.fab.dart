part of '../_index.dart';

class NeedLoginFab extends StatelessWidget {
  const NeedLoginFab({Key? key}) : super(key: key);

  NeedLoginCtrl get ct => x1NeedLoginCtrl;
  NeedLoginData get dt => x1NeedLoginData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
