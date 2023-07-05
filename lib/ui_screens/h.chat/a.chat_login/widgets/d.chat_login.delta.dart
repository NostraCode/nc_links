part of '../_index.dart';

class ChatLoginDelta extends StatelessWidget {
  const ChatLoginDelta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => _dt.rxUser.st == null
          ? ElevatedButton(
              child: const Text('sign in with google'),
              onPressed: () => _ct.signInWithGoogle(),
            )
          : ElevatedButton(
              child: const Text('sign out'),
              onPressed: () => _ct.signOut(),
            ),
    );
  }
}
