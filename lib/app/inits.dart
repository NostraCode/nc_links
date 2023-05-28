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
    await FirebaseAppCheck.instance.activate(
      webRecaptchaSiteKey: '6LdIbTUmAAAAAC-jQ2pWHwT0Y8NxEfpvmjfRqTjR',
      androidProvider: AndroidProvider.debug,
      // appleProvider: AppleProvider.debug,
    );
    Serv.fcm.init();
    Serv.auth.init();
  }

  Serv.conn.init();

  logx.wtf('inits success');
}
