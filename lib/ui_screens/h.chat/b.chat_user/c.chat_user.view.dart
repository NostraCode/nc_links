part of '_index.dart';

class ChatUserView extends StatelessWidget {
  const ChatUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ChatUserAppbar(),
      ),
      // floatingActionButton: const ChatUserFab(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ChatUserCards(),
              // ChatUserDelta(),
              // ChatUserEcho(),
            ],
          ),
        ),
      ),
    );
  }
}
