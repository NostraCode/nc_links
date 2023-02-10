part of '../_index.dart';

class ChatFriendCards extends StatelessWidget {
  const ChatFriendCards({Key? key}) : super(key: key);

  ChatFriendCtrl get ct => Ctrl.chatFriend;
  ChatFriendData get dt => Data.chatFriend.st;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OnBuilder<List<ChatUser>>.all(
        listenTo: Prov.chat.st.rxChatFriends,
        onWaiting: () => const Text('waiting...'),
        onError: (_, __) => const Text('error...'),
        onData: (data) => data.isEmpty
            ? const Center(
                child: Text('empty'),
              )
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ChatFriendCard(
                    chatUser: data[index],
                  );
                },
              ),
      ),
    );
  }
}
