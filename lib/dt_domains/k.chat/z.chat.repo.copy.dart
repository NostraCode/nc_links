// part of '_index.dart';

// final x1ChatRepo = RM.inject<ChatRepo>(() => ChatRepo());

// class ChatRepo {
//   Future<void> sendMessage(ChatMessage chatMessage) {
//     final uniqueKey = UniqueKey().toString().substring(2, 6);
//     const path = 'chat_messages';
//     final value = {uniqueKey: chatMessage.toMap()};
//     return x1FbDatabase.st.update(path, value);
//   }

//   Future<void> addToChatFriends(ChatUser chatUser) {
//     final auth = x1AuthData.st.rxUser.st;
//     String path = 'chat_friends';
//     if (auth != null) {
//       path = 'chat_friends/${auth.uid}';
//     }
//     final value = {chatUser.idUser: chatUser.toMap()};
//     return x1FbDatabase.st.update(path, value);
//   }

//   Stream<List<ChatUser>> listenChatUsers() {
//     const path = 'chat_users';
//     return x1FbDatabase.st.listen(path).map((event) {
//       List<ChatUser> chatUsers = [];
//       //* Firebase's response is not a valid JSON format
//       //* the event data need to be hacked
//       final eventHacked = jsonDecode(jsonEncode(event.snapshot.value));
//       final eventMap = Map<String, dynamic>.from(eventHacked);
//       eventMap.forEach((key, value) {
//         chatUsers.add(ChatUser.fromMap(value));
//       });
//       return chatUsers;
//     });
//   }

//   Stream<List<ChatUser>> listenChatFriends() {
//     final path = 'chat_friends/${x1AuthData.st.rxUser.st?.uid}';
//     return x1FbDatabase.st.listen(path).map((event) {
//       List<ChatUser> chatFriends = [];
//       //* Firebase's response is not a valid JSON format
//       //* the event data need to be hacked
//       final eventHacked = jsonDecode(jsonEncode(event.snapshot.value));
//       final eventMap = Map<String, dynamic>.from(eventHacked);
//       eventMap.forEach((key, value) {
//         chatFriends.add(ChatUser.fromMap(value));
//       });
//       return chatFriends;
//     });
//   }

//   Stream<List<ChatMessage>> listenChatMessages() {
//     const path = 'chat_messages';
//     const child = 'timestamp';
//     // final now = DateTime.now().millisecondsSinceEpoch;
//     const now = 0;
//     return x1FbDatabase.st
//         .listen(path, orderByChild: child, startAt: now)
//         .map((event) {
//       List<ChatMessage> chatMessages = [];
//       for (var child in event.snapshot.children) {
//         //* Firebase's response is not a valid JSON format
//         //* the event data need to be hacked
//         final childHacked = jsonDecode(jsonEncode(child.value));
//         final childMap = Map<String, dynamic>.from(childHacked);
//         chatMessages.insert(0, ChatMessage.fromMap(childMap));
//       }
//       return chatMessages;
//     });
//   }
// }
