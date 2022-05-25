part of '../_index.dart';

class FbAuthD extends StatelessWidget {
  const FbAuthD({Key? key}) : super(key: key);

  FbAuthCtrl get ct => x1FbAuthCtrl;
  FbAuthData get dt => x1FbAuthData.st;

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
