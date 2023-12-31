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
  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    await instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

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

  @override
  Future<void> sendPasswordResetEmail(String email) async {
    await instance.sendPasswordResetEmail(email: email);
  }

  @override
  Future<UserCredential> signInWithCredential(PhoneAuthCredential phoneAuthCredential) {
    throw UnimplementedError();
  }

  @override
  Future<ConfirmationResult> signInWithPhoneNumber(String phoneNumber) {
    throw UnimplementedError();
  }

  @override
  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required void Function(FirebaseAuthException p1) verificationFailed,
    required void Function(PhoneAuthCredential p1) verificationCompleted,
    required void Function(String p1, int? p2) codeSent,
    required void Function(String p1) codeAutoRetrievalTimeout,
    String? autoRetrievedSmsCodeForTesting,
    Duration timeout = const Duration(seconds: 30),
  }) {
    throw UnimplementedError();
  }
}
