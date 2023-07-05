part of '../_index.dart';

class AnalyticsCharlie extends StatelessWidget {
  const AnalyticsCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            OnReactive(
              () => Text(_dt.rxMessage.st),
            ),
            const SizedBoxH(20),
            OutlinedButton(
              child: const Text('Test logEvent'),
              onPressed: () => _ct.sendAnalyticsEvent(),
            ),
            OutlinedButton(
              child: const Text('Test standard event types'),
              onPressed: () => _ct.testAllEventTypes(),
            ),
            OutlinedButton(
              child: const Text('Test setUserId'),
              onPressed: () => _ct.testSetUserId(),
            ),
            OutlinedButton(
              child: const Text('Test setCurrentScreen'),
              onPressed: () => _ct.testSetCurrentScreen(),
            ),
            OutlinedButton(
              child: const Text('Test setAnalyticsCollectionEnabled'),
              onPressed: () => _ct.testSetAnalyticsCollectionEnabled(),
            ),
            OutlinedButton(
              child: const Text('Test setSessionTimeoutDuration'),
              onPressed: () => _ct.testSetSessionTimeoutDuration(),
            ),
            OutlinedButton(
              child: const Text('Test setUserProperty'),
              onPressed: () => _ct.testSetUserProperty(),
            ),
          ],
        )
      ],
    );
  }
}
