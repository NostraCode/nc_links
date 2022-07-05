part of '_index.dart';

final x1ChatData = RM.inject<ChatData>(
  () => ChatData(),
  debugPrintWhenNotifiedPreMessage: '',
  autoDisposeWhenNotUsed: false,
);

class ChatData {
  final rxActiveIdRoom = RM.inject<String?>(
    () => null,
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.hasData) {
          logxx.s(ChatData, 'selectedIdRoom => ${snap.data}');
        }
      },
    ),
  );

  final rxChatUser = RM.inject<ChatUser?>(
    () => null,
    sideEffects: SideEffects(
      onSetState: (snap) {
        logxx.s(ChatData, 'chatUser => ${snap.data}');
        if (snap.data != null) {
          x1ChatServ.init();
        }
      },
    ),
  );

  final rxChatUsers = RM.injectStream<List<ChatUser>>(
    () => Stream.value([]),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.hasData) {
          logxx.s(ChatData, 'chatUsers => ${snap.data?.length}');
        }
      },
    ),
  );

  final rxChatFriends = RM.injectStream<List<ChatUser>>(
    () => Stream.value([]),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.hasData) {
          logxx.s(ChatData, 'chatFriends => ${snap.data?.length}');
        }
      },
    ),
  );

  final rxChatRooms = RM.injectStream<List<ChatRoom>>(
    () => Stream.value([]),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.hasData) {
          logxx.s(ChatData, 'chatRooms => ${snap.data?.length}');
        }
      },
    ),
  );

  // final rxChatMembers = RM.injectStream<Map<String, dynamic>>(
  //   () => Stream.value({}),
  //   autoDisposeWhenNotUsed: false,
  //   sideEffects: SideEffects(
  //     onSetState: (snap) {
  //       if (snap.hasData) {
  //         logxx.s(ChatData, 'chatMembers => ${snap.data?.length}');
  //       }
  //     },
  //   ),
  // );

  final rxChatMessages = RM.injectStream<List<ChatMessage>>(
    () => Stream.value([]),
    autoDisposeWhenNotUsed: false,
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.hasData) {
          logxx.s(ChatData, 'chatMessages => ${snap.data?.length}');
        }
      },
    ),
  );
}
