part of '_index.dart';

class ChatRepo {
  Stream<List<ChatUser>> listenUsers() {
    const path = 'users';
    return x1FbDatabase.st.listen(path).map((event) {
      List<ChatUser> chatUsers = [];
      final eventMap = hackEvent(event);
      eventMap.forEach((key, value) {
        chatUsers.add(ChatUser.fromMap(value));
      });
      return chatUsers;
    });
  }

  Stream<List<ChatUser>> listenContacts(ChatUser chatUser) {
    final path = 'contacts/${chatUser.idUser}';
    return x1FbDatabase.st.listen(path).map((event) {
      List<ChatUser> friends = [];
      if (event.snapshot.value != null) {
        final eventMap = hackEvent(event);
        eventMap.forEach((key, value) {
          friends.add(ChatUser.fromMap(value));
        });
      }
      return friends;
    });
  }

  // Stream<List<ChatRoom>> listenRooms(ChatUser chatUser) {
  //   return FirebaseDatabase.instance
  //       .ref('rooms')
  //       .orderByChild('members/${chatUser.idUser}')
  //       .equalTo(true)
  //       .onValue
  //       .map((event) {
  //     List<ChatRoom> chatRooms = [];
  //     if (event.snapshot.value != null) {
  //       final eventMap = hackEvent(event);
  //       eventMap.forEach((key, value) {
  //         chatRooms.add(ChatRoom.fromMap(value));
  //       });
  //     }
  //     return chatRooms;
  //   });
  // }

  Stream<List<ChatRoom>> listenRooms(ChatUser chatUser) {
    const path = 'rooms';
    return x1FbDatabase.st.listen(path, orderByChild: 'members/${chatUser.idUser}', equalTo: true).map((event) {
      List<ChatRoom> chatRooms = [];
      if (event.snapshot.value != null) {
        final eventMap = hackEvent(event);
        eventMap.forEach((key, value) {
          chatRooms.add(ChatRoom.fromMap(value));
        });
      }
      return chatRooms;
    });
  }

  // Stream<Map<String, dynamic>> listenMembers(ChatUser chatUser) {
  //   const path = 'members';
  //   return x1FbDatabase.st
  //       .listen(path, orderByChild: chatUser.idUser, equalTo: true)
  //       .map((event) {
  //     Map<String, dynamic> chatMembers = {};
  //     if (event.snapshot.value != null) {
  //       final eventMap = hackEvent(event);
  //       chatMembers.addAll(eventMap);
  //     }
  //     return chatMembers;
  //   });
  // }

  //* Firebase's response is not a valid JSON format
  //* the event data need to be hacked
  Map<String, dynamic> hackEvent(DatabaseEvent event) {
    final eventHacked = jsonDecode(jsonEncode(event.snapshot.value));
    final eventMap = Map<String, dynamic>.from(eventHacked);
    return eventMap;
  }

  //! ----- ----- ----- ----- ----- ----- ----- ----- -----

  Future<void> addToUsers(ChatUser chatUser) {
    return x1FbDatabase.st.create(
      // 'db_chat/all_users/${chatUser.idUser}',
      'users/${chatUser.idUser}',
      ChatUser(
        displayName: chatUser.displayName,
        idUser: chatUser.idUser,
        photoUrl: chatUser.photoUrl,
      ).toMap(),
    );
  }

  Future<void> addToContacts(String idUser, ChatUser friend) {
    // String path = 'db_chat/friends_of_users/$idUser';
    String path = 'contacts/$idUser';
    final value = {friend.idUser: friend.toMap()};
    return x1FbDatabase.st.update(path, value);
  }

  Future<void> sendMessage({
    required String idUser,
    required String? idRoom,
    required ChatMessage chatMessage,
    required ChatRoom chatRoom,
  }) {
    const path = '';
    final ref = FirebaseDatabase.instance.ref();
    final idRoom = ref.child('rooms').push().key;
    final idMessage = ref.child('messages/$idRoom').push().key;

    final Map<String, Map> value = {};
    value['rooms/$idRoom'] = chatRoom.toMap();
    value['messages/$idRoom/$idMessage'] = chatMessage.toMap();
    value['members/$idRoom'] = {
      'B0OazbcLy2TGhNjDnamPOAUqtuq1': true,
      '8FGMJimKsLcLHvrAWX3cd3xjxlh2': true,
    };
    return x1FbDatabase.st.update(path, value);
  }

  Stream<List<ChatMessage>> listenChatMessages() {
    const path = 'chat_channels';
    const child = 'timestamp';
    // const child = 'timestamp';
    // final now = DateTime.now().millisecondsSinceEpoch;
    // const now = 0;
    return x1FbDatabase.st.listen(path, orderByChild: child).map((event) {
      List<ChatMessage> chatMessages = [];
      // for (var child in event.snapshot.children.first.children.first.children) {
      for (var child in event.snapshot.children) {
        //* Firebase's response is not a valid JSON format
        //* the event data need to be hacked
        final childHacked = jsonDecode(jsonEncode(child.value));
        final childMap = Map<String, dynamic>.from(childHacked['chat']);
        // final chat = childMap['chat'];
        logx.e(childMap.toString());
        for (var x in childMap.values) {
          chatMessages.insert(0, ChatMessage.fromMap(x));
        }
        // chatMessages.insert(0, ChatMessage.fromMap(childMap));
      }
      return chatMessages;
    });
  }

  // void addStar(uid, key) async {
  //   Map<String, Object?> updates = {};
  //   updates["posts/$key/stars/$uid"] = true;
  //   updates["posts/$key/starCount"] = ServerValue.increment(1);
  //   updates["user-posts/$key/stars/$uid"] = true;
  //   updates["user-posts/$key/starCount"] = ServerValue.timestamp;
  //   return FirebaseDatabase.instance.ref().update(updates);
  // }
}
