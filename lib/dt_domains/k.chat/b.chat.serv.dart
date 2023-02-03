part of '_index.dart';

final x1ChatServ = ChatServ();

class ChatServ {
  ChatProv get pv => x1ChatProv.st;

  init() {
    logxx.i(ChatServ, '...');
    addToUsers();
    listenUsers();
    listenFriends();
    listenRooms();
    // listenMembers();
  }

  updateChatUser(User? user) {
    if (user == null) {
      pv.rxChatUser.st = null;
    } else {
      pv.rxChatUser.st = ChatUser(
        // idUser: '${user.email}'.replaceAll('.', ''),
        idUser: user.uid,
        displayName: '${user.displayName}',
        photoUrl: user.photoURL ?? '',
      );
    }
  }

  addToUsers() {
    final chatUser = pv.rxChatUser.st;
    if (chatUser != null) {
      x1ChatRepo.st.addToUsers(chatUser);
    }
  }

  addToContacts(ChatUser friend) {
    final chatUser = pv.rxChatUser.st;
    if (chatUser != null) {
      x1ChatRepo.st.addToContacts(chatUser.idUser, friend);
    }
  }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

  listenUsers() {
    pv.rxChatUsers.subscription = x1ChatRepo.st.listenUsers().listen((event) => pv.rxChatUsers.st = event);
  }

  listenFriends() {
    final chatUser = pv.rxChatUser.st;
    if (chatUser != null) {
      pv.rxChatFriends.subscription =
          x1ChatRepo.st.listenContacts(chatUser).listen((event) => pv.rxChatFriends.st = event);
    }
  }

  listenRooms() {
    final chatUser = pv.rxChatUser.st;
    if (chatUser != null) {
      pv.rxChatRooms.subscription = x1ChatRepo.st.listenRooms(chatUser).listen((event) => pv.rxChatRooms.st = event);
    }
  }

  // listenMembers() {
  //   final chatUser = dt.rxChatUser.st;
  //   if (chatUser != null) {
  //     dt.rxChatMembers.subscription = x1ChatRepo.st
  //         .listenMembers(chatUser)
  //         .listen((event) => dt.rxChatMembers.st = event);
  //   }
  // }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

  listenMessages() {
    pv.rxChatMessages.subscription = x1ChatRepo.st.listenChatMessages().listen(
      (event) {
        pv.rxChatMessages.setState((s) => event);
        if (event.isNotEmpty) {}
      },
    );
  }

  sendMessage(ChatMessage chatMessage) {
    final chatUser = pv.rxChatUser.st;
    final chatRoom = ChatRoom(
      lastMessage: chatMessage.message,
      timestamp: chatMessage.timestamp,
      title: 'wowww',
    );
    if (chatUser != null) {
      x1ChatRepo.st.sendMessage(
        idUser: chatUser.idUser,
        idRoom: pv.rxActiveIdRoom.st,
        chatMessage: chatMessage,
        chatRoom: chatRoom,
      );
    }
  }
}
