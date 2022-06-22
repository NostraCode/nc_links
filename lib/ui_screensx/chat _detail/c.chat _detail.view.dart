part of '_index.dart';

class ChatDetailView extends StatelessWidget {
  const ChatDetailView({Key? key}) : super(key: key);

  ChatDetailCtrl get ct => x1ChatDetailCtrl;
  ChatDetailData get dt => x1ChatDetailData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatDetailAppbar(),
      ),
      floatingActionButton: const ChatDetailFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ChatDetailCharlie(),
            ChatDetailDelta(),
            ChatDetailEcho(),
          ],
        ),
      ),
    );
  }
}
