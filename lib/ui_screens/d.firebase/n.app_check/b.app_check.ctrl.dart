part of '_index.dart';

class AppCheckCtrl {
  init() => logxx.i(AppCheckCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  setMessage(String message) {
    _dt.rxMessage.st = message;
    logxx.i(AppCheckCtrl, message.toString());
  }

  setEventToken(String? token) {
    _dt.rxEventToken.st = token ?? 'not yet';
  }

  // to check whether the request was validated on the Firebase console
  tryAppCheck() async {
    try {
      // gets first document in collection
      final result = await x1FbFirestore.instance.collection('products').limit(1).get();
      setMessage(result.docs.isNotEmpty ? 'Document found' : 'Document not found');
    } catch (obj) {
      Fun.handleException(obj);
    }
  }

  void activate() async {
    if (PlatformType.isWeb) {
      logx.w('Pass in your "webRecaptchaSiteKey" key found on you Firebase Console.');
    }
    try {
      // ! bugs at "AppCheck":
      // ! in firebase appCheck console => "reCaptcha" can not be registered
      // ! in firebase appCheck console => "reCaptcha enterprise" can be registered
      // ! works with "reCaptcha keys from classic v3" registered to "firebase reCaptcha enterprise"
      // !
      // ! AppCheck Authentication is "unEnforced" because of BETA status
      // * app check via playIntegrity is OK for "Storage, RealtimeDB, CloudFirestore"
      // await x1FbAppCheck.st.instance.activate(
      //   webRecaptchaSiteKey: '6LdGfVUmAAAAAB_TGJ13vQshxIGTvXTjdSVr_sUx',
      //   androidProvider: AndroidProvider.playIntegrity,
      //   appleProvider: AppleProvider.debug,
      // );
      setMessage('activated!!');
    } catch (obj) {
      Fun.handleException(obj);
    }
  }

  void getToken() async {
    try {
      final token = await x1FbAppCheck.st.instance.getToken();
      setMessage(token.toString());
    } catch (obj) {
      Fun.handleException(obj);
    }
  }

  void setTokenAutoRefreshEnabled() async {
    try {
      await x1FbAppCheck.st.instance.setTokenAutoRefreshEnabled(true);
      setMessage('successfully set auto token refresh!!');
    } catch (obj) {
      Fun.handleException(obj);
    }
  }
}
