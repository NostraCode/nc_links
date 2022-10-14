part of '_index.dart';

final x1ChatFriendData = RM.inject<ChatFriendData>(
  () => ChatFriendData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ChatFriendCtrl.init()),
);

class ChatFriendData {
  final rxTitle = 'ChatFriend'.inj();

  final rxInt = 0.inj();
}
