part of '../_index.dart';

class ChatLoginDelta extends StatelessWidget {
  const ChatLoginDelta({Key? key}) : super(key: key);

  ChatLoginCtrl get ct => Ctrl.chatLogin;
  ChatLoginData get dt => Data.chatLogin.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => dt.rxUser.st == null
          ? ElevatedButton(
              child: const Text('sign in with google'),
              onPressed: () => ct.signInWithGoogle(),
            )
          : ElevatedButton(
              child: const Text('sign out'),
              onPressed: () => ct.signOut(),
            ),
    );
  }
}
