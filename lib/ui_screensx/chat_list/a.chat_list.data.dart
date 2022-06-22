part of '_index.dart';

final x1ChatListData = RM.inject<ChatListData>(
  () => ChatListData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ChatListCtrl.init()),
);

class ChatListData {
  final rxTitle = 'ChatList'.inj();

  final rxInt = 0.inj();
}
