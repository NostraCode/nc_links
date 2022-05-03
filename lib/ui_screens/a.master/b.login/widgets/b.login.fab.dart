part of '../_index.dart';

class LoginFab extends StatelessWidget {
  const LoginFab({Key? key}) : super(key: key);

  LoginCtrl get ct => x1LoginCtrl;
  LoginData get dt => x1LoginData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
