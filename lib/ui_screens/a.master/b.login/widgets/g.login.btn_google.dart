part of '../_index.dart';

class LoginBtnGoogle extends StatelessWidget {
  const LoginBtnGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Image.asset('assets/images/g-logo.png'),
            ),
            const Expanded(
              child: Center(
                child: Text('SIGN IN WITH GOOGLE'),
              ),
            )
          ],
        ),
        onPressed: () => _ct.signInWithGoogle(),
      ),
    );
  }
}
