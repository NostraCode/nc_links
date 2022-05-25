part of '_index.dart';

Future<void> inits() async {
  logger.wtf('inits start');

  WidgetsFlutterBinding.ensureInitialized();

  if (!PlatformType.isWindows) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  logger.wtf('inits success');
}
