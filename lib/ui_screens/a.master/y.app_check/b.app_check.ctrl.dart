part of '_index.dart';

class AppCheckCtrl {
  AppCheckData get dt => Data.appCheck.st;

  init() => logxx.i(AppCheckCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  setMessage(String message) {
    dt.rxMessage.st = message;
  }

  setEventToken(String? token) {
    dt.rxEventToken.st = token ?? 'not yet';
  }

  // to check whether the request was validated on the Firebase console
  tryAppCheck() async {
    // gets first document in collection
    final result = await x1FbFirestore.instance.collection('products').limit(1).get();
    setMessage(result.docs.isNotEmpty ? 'Document found' : 'Document not found');
  }

  void activate() async {
    if (PlatformType.isWeb) {
      logx.w('Pass in your "webRecaptchaSiteKey" key found on you Firebase Console.');
    }
    await x1FbAppCheck.st.instance.activate(
      webRecaptchaSiteKey: '6LdIbTUmAAAAAC-jQ2pWHwT0Y8NxEfpvmjfRqTjR',
      androidProvider: AndroidProvider.debug,
      // appleProvider: AppleProvider.appAttest,
    );
    setMessage('activated!!');
  }

  void getToken() async {
    final token = await x1FbAppCheck.st.instance.getToken(true);
    logx.i(token.toString());
  }

  void setTokenAutoRefreshEnabled() async {
    await x1FbAppCheck.st.instance.setTokenAutoRefreshEnabled(true);
    setMessage('successfully set auto token refresh!!');
  }
}
