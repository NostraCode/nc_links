// ignore_for_file: invalid_use_of_visible_for_testing_member

part of '_index.dart';

final x1FbAuth = RM.inject<FbAuth>(() => FbAuth());

class FbAuth {
  final instance = FirebaseAuth.instance;

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    await instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    instance.currentUser?.sendEmailVerification();
  }

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

  Future<void> sendPasswordResetEmail(String email) async {
    await instance.sendPasswordResetEmail(email: email);
  }

  Future<ConfirmationResult> signInWithPhoneNumber(String phoneNumber) async {
    return await instance.signInWithPhoneNumber(phoneNumber);
  }

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required void Function(FirebaseAuthException) verificationFailed,
    required void Function(PhoneAuthCredential) verificationCompleted,
    required void Function(String, int?) codeSent,
    required void Function(String) codeAutoRetrievalTimeout,
    String? autoRetrievedSmsCodeForTesting,
    Duration timeout = const Duration(seconds: 30),
  }) async {
    await instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: timeout,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
      verificationCompleted: verificationCompleted,
      autoRetrievedSmsCodeForTesting: autoRetrievedSmsCodeForTesting,
    );
  }

  Future<UserCredential> signInWithCredential(PhoneAuthCredential phoneAuthCredential) async {
    return await instance.signInWithCredential(phoneAuthCredential);
  }
}
