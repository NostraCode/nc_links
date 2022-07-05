part of '../_index.dart';

class ChatUserCards extends StatelessWidget {
  const ChatUserCards({Key? key}) : super(key: key);

  ChatUserCtrl get ct => x1ChatUserCtrl;
  ChatUserData get dt => x1ChatUserData.st;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OnBuilder<List<ChatUser>>.all(
        listenTo: x1ChatData.st.rxChatUsers,
        onWaiting: () => const Text('waiting...'),
        onError: (_, __) => const Text('error...'),
        onData: (data) => data.isEmpty
            ? const Center(
                child: Text('empty'),
              )
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ChatUserCard(
                    chatUser: data[index],
                  );
                },
              ),
      ),
    );
  }
}
