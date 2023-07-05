part of '_index.dart';

class ChatLoginView extends StatelessWidget {
  const ChatLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatLoginAppbar(),
      ),
      // floatingActionButton: const ChatLoginFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChatLoginCharlie(),
            ChatLoginDelta(),
            ChatLoginEcho(),
          ],
        ),
      ),
    );
  }
}
