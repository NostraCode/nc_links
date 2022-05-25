part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  WidgetsFlutterBinding.ensureInitialized();

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
