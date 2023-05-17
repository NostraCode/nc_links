part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  WidgetsFlutterBinding.ensureInitialized();

  await RM.storageInitializer(config.st.store);

  if (PlatformType.isWeb || PlatformType.isAndroid || PlatformType.isIOS || PlatformType.isMacOS) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    Serv.fcm.init();
    Serv.auth.init();
  }

  Serv.conn.init();

  setPathUrlStrategy();

  logx.wtf('inits success');
}
