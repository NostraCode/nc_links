part of '../_index.dart';

class ForgetBtnToLogin extends StatelessWidget {
  const ForgetBtnToLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextButton(
        child: const Text('back to login'),
        onPressed: () => nav.toReplacement(Routes.login),
      ),
    );
  }
}
