part of '../_index.dart';

class ChatUserCard extends StatelessWidget {
  final ChatUser chatUser;
  const ChatUserCard({
    Key? key,
    required this.chatUser,
  }) : super(key: key);

  ChatUserCtrl get ct => Ctrl.chatUser;
  ChatUserData get dt => Data.chatUser.st;

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
          trailing: IconButton(
            onPressed: () => Serv.chat.addToContacts(chatUser),
            icon: const Icon(Icons.add),
          ),
          // onTap: () => x1ChatServ.addToChatFriends(chatUser),
        ),
      ),
    );
  }
}
