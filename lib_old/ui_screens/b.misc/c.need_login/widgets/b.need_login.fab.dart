part of '../_index.dart';

class NeedLoginFab extends StatelessWidget {
  const NeedLoginFab({Key? key}) : super(key: key);

  NeedLoginCtrl get ct => Ctrl.needLogin;
  NeedLoginData get dt => Data.needLogin.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
