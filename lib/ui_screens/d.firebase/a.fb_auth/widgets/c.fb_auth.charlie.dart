part of '../_index.dart';

class FbAuthCharlie extends StatelessWidget {
  const FbAuthCharlie({Key? key}) : super(key: key);

  FbAuthCtrl get ct => Ctrl.fbAuth;
  FbAuthData get dt => Data.fbAuth.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => dt.rxUserApp.st == null
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
