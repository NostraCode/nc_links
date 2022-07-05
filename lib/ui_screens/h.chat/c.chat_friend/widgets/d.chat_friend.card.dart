part of '../_index.dart';

class ChatFriendCard extends StatelessWidget {
  final ChatUser chatUser;
  const ChatFriendCard({
    Key? key,
    required this.chatUser,
  }) : super(key: key);

  ChatFriendCtrl get ct => x1ChatFriendCtrl;
  ChatFriendData get dt => x1ChatFriendData.st;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: OnReactive(
        () => ListTile(
          dense: true,
          title: Text('${chatUser.displayName} [${chatUser.idUser}]'),
          subtitle: Text(chatUser.idUser),
          leading: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.withOpacity(0.6),
            child: chatUser.photoUrl.isEmpty
                ? const Icon(Icons.person)
                : Stack(
                    children: [
                      const Center(child: Text('...')),
                      ClipOval(
                        child: FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: chatUser.photoUrl,
                          // fadeInDuration: const Duration(seconds: 3),
                        ),
                      ),
                    ],
                  ),
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
