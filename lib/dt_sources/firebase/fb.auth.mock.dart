part of '_index.dart';

class FbAuthMock implements FbAuth {
  @override
  final instance = MockFirebaseAuth(
    mockUser: MockUser(
      displayName: 'testDisplayName',
      email: 'test@email.com',
    ),
  );

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();
    final googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await instance.signInWithCredential(credential);
  }

  @override
  Future<void> signOut() async {
    await instance.signOut();
  }
}
