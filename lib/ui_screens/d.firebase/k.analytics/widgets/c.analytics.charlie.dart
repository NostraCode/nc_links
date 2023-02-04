part of '../_index.dart';

class AnalyticsCharlie extends StatelessWidget {
  const AnalyticsCharlie({Key? key}) : super(key: key);

  AnalyticsCtrl get ct => Ctrl.analytics;
  AnalyticsData get dt => Data.analytics.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            OnReactive(
              () => Text(dt.rxMessage.st),
            ),
            const SizedBoxH(20),
            OutlinedButton(
              child: const Text('Test logEvent'),
              onPressed: () => ct.sendAnalyticsEvent(),
            ),
            OutlinedButton(
              child: const Text('Test standard event types'),
              onPressed: () => ct.testAllEventTypes(),
            ),
            OutlinedButton(
              child: const Text('Test setUserId'),
              onPressed: () => ct.testSetUserId(),
            ),
            OutlinedButton(
              child: const Text('Test setCurrentScreen'),
              onPressed: () => ct.testSetCurrentScreen(),
            ),
            OutlinedButton(
              child: const Text('Test setAnalyticsCollectionEnabled'),
              onPressed: () => ct.testSetAnalyticsCollectionEnabled(),
            ),
            OutlinedButton(
              child: const Text('Test setSessionTimeoutDuration'),
              onPressed: () => ct.testSetSessionTimeoutDuration(),
            ),
            OutlinedButton(
              child: const Text('Test setUserProperty'),
              onPressed: () => ct.testSetUserProperty(),
            ),
          ],
        )
      ],
    );
  }
}
