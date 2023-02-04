part of '_index.dart';

class FcmView extends StatelessWidget {
  const FcmView({Key? key}) : super(key: key);

  FcmCtrl get ct => Ctrl.fcm;
  FcmData get dt => Data.fcm.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: FcmAppbar(),
      ),
      floatingActionButton: const FcmFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            FcmSubscriber(),
            Divider(),
            FcmSender(),
            // FcmEcho(),
          ],
        ),
      ),
    );
  }
}
