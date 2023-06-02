part of '_index.dart';

class AppCheckView extends StatelessWidget {
  const AppCheckView({Key? key}) : super(key: key);

  AppCheckCtrl get ct => Ctrl.appCheck;
  AppCheckData get dt => Data.appCheck.st;

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
              onPressed: () => ct.tryAppCheck(),
              child: const Text(
                'try appCheck & firestore rule',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () => ct.activate(),
              child: const Text('activate'),
            ),
            ElevatedButton(
              onPressed: () => ct.getToken(),
              child: const Text('get token'),
            ),
            ElevatedButton(
              onPressed: () => ct.setTokenAutoRefreshEnabled(),
              child: const Text('set token auto refresh enabled'),
            ),
            const SizedBoxH(20),
            OnReactive(
              () => Text(dt.rxMessage.st),
            ),
            const SizedBoxH(20),
            const Text('Token received from tokenChanges() API:'),
            OnReactive(() => Text(dt.rxAppCheck.st ?? 'null')),
            // OnBuilder.data(
            //   listenTo: dt.rxAppCheck,
            //   builder: (data) => Text('$data'),
            // ),
          ],
        ),
      ),
    );
  }
}
