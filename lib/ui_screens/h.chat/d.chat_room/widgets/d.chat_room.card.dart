part of '../_index.dart';

class ChatRoomCard extends StatelessWidget {
  final ChatRoom chatRoom;
  const ChatRoomCard({
    Key? key,
    required this.chatRoom,
  }) : super(key: key);

  ChatRoomCtrl get ct => x1ChatRoomCtrl;
  ChatRoomData get dt => x1ChatRoomData.st;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: OnReactive(
        () => ListTile(
          dense: true,
          title: Text(chatRoom.title),
          subtitle: Text(chatRoom.lastMessage),
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.withOpacity(0.6),
            // child: chatRoom.photoUrl.isEmpty
            //     ? const Icon(Icons.person)
            //     : Stack(
            //         children: [
            //           const Center(child: Text('...')),
            //           ClipOval(
            //             child: FadeInImage.memoryNetwork(
            //               placeholder: kTransparentImage,
            //               image: chatRoom.photoUrl,
            //               // fadeInDuration: const Duration(seconds: 3),
            //             ),
            //           ),
            //         ],
            //       ),
          ),
          // trailing: IconButton(
          //   onPressed: () => x1ChatServ.addToChatFriends(chatUser),
          //   icon: const Icon(Icons.add),
          // ),
          // onTap: () => x1ChatServ.addToChatFriends(chatUser),
        ),
      ),
    );
  }
}
