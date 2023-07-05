part of '_index.dart';

class ChatServ {
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
      _pv.rxChatUser.st = null;
    } else {
      _pv.rxChatUser.st = ChatUser(
        // idUser: '${user.email}'.replaceAll('.', ''),
        idUser: user.uid,
        displayName: '${user.displayName}',
        photoUrl: user.photoURL ?? '',
      );
    }
  }

  addToUsers() {
    final chatUser = _pv.rxChatUser.st;
    if (chatUser != null) {
      Repo.chat.st.addToUsers(chatUser);
    }
  }

  addToContacts(ChatUser friend) {
    final chatUser = _pv.rxChatUser.st;
    if (chatUser != null) {
      Repo.chat.st.addToContacts(chatUser.idUser, friend);
    }
  }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

  listenUsers() {
    _pv.rxChatUsers.subscription = Repo.chat.st.listenUsers().listen((event) => _pv.rxChatUsers.st = event);
  }

  listenFriends() {
    final chatUser = _pv.rxChatUser.st;
    if (chatUser != null) {
      _pv.rxChatFriends.subscription =
          Repo.chat.st.listenContacts(chatUser).listen((event) => _pv.rxChatFriends.st = event);
    }
  }

  listenRooms() {
    final chatUser = _pv.rxChatUser.st;
    if (chatUser != null) {
      _pv.rxChatRooms.subscription = Repo.chat.st.listenRooms(chatUser).listen((event) => _pv.rxChatRooms.st = event);
    }
  }

  // listenMembers() {
  //   final chatUser = _dt.rxChatUser.st;
  //   if (chatUser != null) {
  //     _dt.rxChatMembers.subscription = Repo.chat.st
  //         .listenMembers(chatUser)
  //         .listen((event) => _dt.rxChatMembers.st = event);
  //   }
  // }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

  listenMessages() {
    _pv.rxChatMessages.subscription = Repo.chat.st.listenChatMessages().listen(
      (event) {
        _pv.rxChatMessages.setState((s) => event);
        if (event.isNotEmpty) {}
      },
    );
  }

  sendMessage(ChatMessage chatMessage) {
    final chatUser = _pv.rxChatUser.st;
    final chatRoom = ChatRoom(
      lastMessage: chatMessage.message,
      timestamp: chatMessage.timestamp,
      title: 'wowww',
    );
    if (chatUser != null) {
      Repo.chat.st.sendMessage(
        idUser: chatUser.idUser,
        idRoom: _pv.rxActiveIdRoom.st,
        chatMessage: chatMessage,
        chatRoom: chatRoom,
      );
    }
  }
}
