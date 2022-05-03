part of '../_index.dart';

class RegisBtnToLogin extends StatelessWidget {
  const RegisBtnToLogin({Key? key}) : super(key: key);

  RegisCtrl get ct => x1RegisCtrl;
  RegisData get dt => x1RegisData.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextButton(
        child: const Text('already registered?'),
        onPressed: () => nav.toReplacement(Routes.login),
      ),
    );
  }
}
