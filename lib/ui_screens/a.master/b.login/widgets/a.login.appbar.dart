part of '../_index.dart';

class LoginAppbar extends StatelessWidget {
  const LoginAppbar({Key? key}) : super(key: key);

  LoginCtrl get ct => x1LoginCtrl;
  LoginData get dt => x1LoginData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rmTitle.st)),
    );
  }
}
