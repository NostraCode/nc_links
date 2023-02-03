part of '_index.dart';

final x1ChatProv = RM.inject<ChatProv>(
  () => ChatProv(),
  debugPrintWhenNotifiedPreMessage: '',
  autoDisposeWhenNotUsed: false,
);

class ChatProv {
  final rxActiveIdRoom = RM.inject<String?>(
    () => null,
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.hasData) {
          logxx.s(ChatProv, 'selectedIdRoom => ${snap.data}');
        }
      },
    ),
  );

  final rxChatUser = RM.inject<ChatUser?>(
    () => null,
    sideEffects: SideEffects(
      onSetState: (snap) {
        logxx.s(ChatProv, 'chatUser => ${snap.data}');
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
          logxx.s(ChatProv, 'chatUsers => ${snap.data?.length}');
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
          logxx.s(ChatProv, 'chatFriends => ${snap.data?.length}');
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
          logxx.s(ChatProv, 'chatRooms => ${snap.data?.length}');
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
          logxx.s(ChatProv, 'chatMessages => ${snap.data?.length}');
        }
      },
    ),
  );
}
