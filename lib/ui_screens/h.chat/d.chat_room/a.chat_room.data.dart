part of '_index.dart';

final x1ChatRoomData = RM.inject<ChatRoomData>(
  () => ChatRoomData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ChatRoomCtrl.init()),
);

class ChatRoomData {
  final rxTitle = 'ChatRoom'.inj();

  final rxInt = 0.inj();
}
