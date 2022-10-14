part of '_index.dart';

final x1ChatServ = ChatServ();

class ChatServ {
  ChatData get dt => x1ChatData.st;

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
      dt.rxChatUser.st = null;
    } else {
      dt.rxChatUser.st = ChatUser(
        // idUser: '${user.email}'.replaceAll('.', ''),
        idUser: user.uid,
        displayName: '${user.displayName}',
        photoUrl: user.photoURL ?? '',
      );
    }
  }

  addToUsers() {
    final chatUser = dt.rxChatUser.st;
    if (chatUser != null) {
      x1ChatRepo.st.addToUsers(chatUser);
    }
  }

  addToContacts(ChatUser friend) {
    final chatUser = dt.rxChatUser.st;
    if (chatUser != null) {
      x1ChatRepo.st.addToContacts(chatUser.idUser, friend);
    }
  }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

  listenUsers() {
    dt.rxChatUsers.subscription = x1ChatRepo.st
        .listenUsers()
        .listen((event) => dt.rxChatUsers.st = event);
  }

  listenFriends() {
    final chatUser = dt.rxChatUser.st;
    if (chatUser != null) {
      dt.rxChatFriends.subscription = x1ChatRepo.st
          .listenContacts(chatUser)
          .listen((event) => dt.rxChatFriends.st = event);
    }
  }

  listenRooms() {
    final chatUser = dt.rxChatUser.st;
    if (chatUser != null) {
      dt.rxChatRooms.subscription = x1ChatRepo.st
          .listenRooms(chatUser)
          .listen((event) => dt.rxChatRooms.st = event);
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
    dt.rxChatMessages.subscription = x1ChatRepo.st.listenChatMessages().listen(
      (event) {
        dt.rxChatMessages.setState((s) => event);
        if (event.isNotEmpty) {}
      },
    );
  }

  sendMessage(ChatMessage chatMessage) {
    final chatUser = dt.rxChatUser.st;
    final chatRoom = ChatRoom(
      lastMessage: chatMessage.message,
      timestamp: chatMessage.timestamp,
      title: 'wowww',
    );
    if (chatUser != null) {
      x1ChatRepo.st.sendMessage(
        idUser: chatUser.idUser,
        idRoom: dt.rxActiveIdRoom.st,
        chatMessage: chatMessage,
        chatRoom: chatRoom,
      );
    }
  }
}
