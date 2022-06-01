part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  WidgetsFlutterBinding.ensureInitialized();

  // await RM.storageInitializer(localStore.state);
  await RM.storageInitializer(config.st.store);

  if (!PlatformType.isWindows) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    x1FcmServ.init();
    x1AuthServ.init();
  }

  setPathUrlStrategy();

  x1ConnServ.init();

  logx.wtf('inits success');
}
