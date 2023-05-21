part of '_index.dart';

final x1FbAuth = RM.inject<FbAuth>(() => FbAuth());

class FbAuth {
  final instance = FirebaseAuth.instance;

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    // try {
    await instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    instance.currentUser?.sendEmailVerification();
    // } catch (e) {
    //   Fun.handleException(e);
    // }
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    // try {
    await instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    // } catch (e) {
    //   Fun.handleException(e);
    // }
  }

  Future<void> signInWithGoogle() async {
    // try {
    final googleUser = await GoogleSignIn().signIn();
    final googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await instance.signInWithCredential(credential);
    // } catch (e) {
    //   Fun.handleException(e);
    // }
  }

  Future<void> signOut() async {
    // try {
    await instance.signOut();
    // } catch (e) {
    //   Fun.handleException(e);
    // }
  }
}
