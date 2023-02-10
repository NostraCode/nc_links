part of '_index.dart';

class ChatServ {
  ChatProv get pv => Prov.chat.st;

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
      Repo.chat.st.addToUsers(chatUser);
    }
  }

  addToContacts(ChatUser friend) {
    final chatUser = pv.rxChatUser.st;
    if (chatUser != null) {
      Repo.chat.st.addToContacts(chatUser.idUser, friend);
    }
  }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

  listenUsers() {
    pv.rxChatUsers.subscription = Repo.chat.st.listenUsers().listen((event) => pv.rxChatUsers.st = event);
  }

  listenFriends() {
    final chatUser = pv.rxChatUser.st;
    if (chatUser != null) {
      pv.rxChatFriends.subscription =
          Repo.chat.st.listenContacts(chatUser).listen((event) => pv.rxChatFriends.st = event);
    }
  }

  listenRooms() {
    final chatUser = pv.rxChatUser.st;
    if (chatUser != null) {
      pv.rxChatRooms.subscription = Repo.chat.st.listenRooms(chatUser).listen((event) => pv.rxChatRooms.st = event);
    }
  }

  // listenMembers() {
  //   final chatUser = dt.rxChatUser.st;
  //   if (chatUser != null) {
  //     dt.rxChatMembers.subscription = Repo.chat.st
  //         .listenMembers(chatUser)
  //         .listen((event) => dt.rxChatMembers.st = event);
  //   }
  // }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

  listenMessages() {
    pv.rxChatMessages.subscription = Repo.chat.st.listenChatMessages().listen(
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
      Repo.chat.st.sendMessage(
        idUser: chatUser.idUser,
        idRoom: pv.rxActiveIdRoom.st,
        chatMessage: chatMessage,
        chatRoom: chatRoom,
      );
    }
  }
}
