part of '_index.dart';

Future<void> inits() async {
  logger.wtf('inits start');

  WidgetsFlutterBinding.ensureInitialized();

  if (!PlatformType.isWindows) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    x1XauthServ.init();
  }

  if (PlatformType.isWeb) {
    setPathUrlStrategy();
  }

  x1ConnServ.init();

  logger.wtf('inits success');
}
