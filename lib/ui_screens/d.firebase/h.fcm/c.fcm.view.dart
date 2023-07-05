part of '_index.dart';

class FcmView extends StatelessWidget {
  const FcmView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: FcmAppbar(),
      ),
      floatingActionButton: FcmFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
