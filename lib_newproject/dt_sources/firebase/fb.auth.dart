part of '_index.dart';

final x1FbAuth = RM.inject<FbAuth>(() => FbAuth());

class FbAuth {
  final instance = FirebaseAuth.instance;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();
    final googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await instance.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    await instance.signOut();
  }
}
