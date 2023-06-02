part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();

  await RM.storageInitializer(config.st.store);

  if (PlatformType.isWeb || PlatformType.isAndroid || PlatformType.isIOS || PlatformType.isMacOS) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // ! bugs at "AppCheck":
    // ! in firebase appCheck console => "reCaptcha" can not be registered
    // ! in firebase appCheck console => "reCaptcha enterprise" can be registered
    // ! works with "reCaptcha keys from classic v3" registered to "firebase reCaptcha enterprise"
    // !
    // ! AppCheck Authentication is "unEnforced" because of BETA status
    // * app check via playIntegrity is OK for "Storage, RealtimeDB, CloudFirestore"
    // await FirebaseAppCheck.instance.activate(
    //   webRecaptchaSiteKey: '6LdGfVUmAAAAAB_TGJ13vQshxIGTvXTjdSVr_sUx',
    //   androidProvider: AndroidProvider.playIntegrity,
    //   appleProvider: AppleProvider.debug,
    // );
    Serv.fcm.init();
    Serv.auth.init();
  }

  Serv.conn.init();

  logx.wtf('inits success');
}
