part of '_index.dart';

class Helper {
  static Future<void> starterSteps(WidgetTester tester) async {
    if (RM.env == Flavor.test) {
      await tester.pumpWidget(const App());
    } else {
      app.main();
      await tester.pumpAndSettleXtra();
    }
  }

  static void configTest() {
    if (stacktrace.Frame.caller(1).location.contains('integration_test')) {
      configIntegrationTest();
    } else {
      configWidgetTest();
    }
  }

  static void configWidgetTest() {
    setUpAll(() {
      logger.i('setup all for widget test...');
      //* to allow http request at widgetTest;
      HttpOverrides.global = null;
    });
    setUp(() {
      logger.v('setup...');
      Mocks.instance.init();
      RM.env = Flavor.test;
      logger.v('run on ${RM.env.toString()}');
    });
    tearDown(() => logger.v('teardown...'));
    tearDownAll(() => logger.v('teardown all...'));
  }

  static void configIntegrationTest() {
    setUpAll(() {
      logger.i('setup all for integration test...');
      IntegrationTestWidgetsFlutterBinding.ensureInitialized();
      //* to handle janked animation on integrated test because of "tester.pump(duration)"
      TestWidgetsFlutterBinding binding = TestWidgetsFlutterBinding.ensureInitialized();
      if (binding is LiveTestWidgetsFlutterBinding) {
        binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;
      }
    });
    setUp(() {
      logger.v('setup...');
      Mocks.instance.init();
      RM.env = Flavor.dev;
      logger.v('run on ${RM.env.toString()}');
    });
    tearDown(() => logger.v('teardown...'));
    tearDownAll(() => logger.v('teardown all...'));
  }
}

//* example for "HttpOverrides.global = null";
// testWidgets('http', (WidgetTester tester) async {
//   await tester.runAsync(() async {
//     final HttpClient client = HttpClient();
//     final HttpClientRequest request = await client.getUrl(Uri.parse('https://google.com'));

//     final HttpClientResponse response = await request.close();
//     debugPrint(response.statusCode.toString()); // Should get 200
//   });
// });




