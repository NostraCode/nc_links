part of '_index.dart';

class AppCheckView extends StatelessWidget {
  const AppCheckView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AppCheckAppbar(),
      ),
      // floatingActionButton: const AppCheckFab(),
      body: Center(
        child: Column(
          children: [
            const SizedBoxH(10),
            ElevatedButton(
              onPressed: () => _ct.tryAppCheck(),
              child: const Text(
                'try appCheck & firestore rule',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () => _ct.activate(),
              child: const Text('activate'),
            ),
            ElevatedButton(
              onPressed: () => _ct.getToken(),
              child: const Text('get token'),
            ),
            ElevatedButton(
              onPressed: () => _ct.setTokenAutoRefreshEnabled(),
              child: const Text('set token auto refresh enabled'),
            ),
            const SizedBoxH(20),
            OnReactive(
              () => Text(_dt.rxMessage.st),
            ),
            const SizedBoxH(20),
            const Text('Token received from tokenChanges() API:'),
            OnReactive(() => Text(_dt.rxAppCheck.st ?? 'null')),
            // OnBuilder.data(
            //   listenTo: _dt.rxAppCheck,
            //   builder: (data) => Text('$data'),
            // ),
          ],
        ),
      ),
    );
  }
}
