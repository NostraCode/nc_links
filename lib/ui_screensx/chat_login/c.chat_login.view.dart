part of '_index.dart';

class ChatLoginView extends StatelessWidget {
  const ChatLoginView({Key? key}) : super(key: key);

  ChatLoginCtrl get ct => x1ChatLoginCtrl;
  ChatLoginData get dt => x1ChatLoginData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatLoginAppbar(),
      ),
      floatingActionButton: const ChatLoginFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ChatLoginCharlie(),
            ChatLoginDelta(),
            ChatLoginEcho(),
          ],
        ),
      ),
    );
  }
}
