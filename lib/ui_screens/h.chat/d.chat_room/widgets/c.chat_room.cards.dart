part of '../_index.dart';

class ChatRoomCards extends StatelessWidget {
  const ChatRoomCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OnBuilder<List<ChatRoom>>.all(
        listenTo: Prov.chat.st.rxChatRooms,
        onWaiting: () => const Text('waiting...'),
        onError: (_, __) => const Text('error...'),
        onData: (data) => data.isEmpty
            ? const Center(
                child: Text('empty'),
              )
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ChatRoomCard(
                    chatRoom: data[index],
                  );
                },
              ),
      ),
    );
  }
}
