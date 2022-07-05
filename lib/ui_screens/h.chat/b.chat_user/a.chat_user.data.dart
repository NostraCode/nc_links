part of '_index.dart';

final x1ChatUserData = RM.inject<ChatUserData>(
  () => ChatUserData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ChatUserCtrl.init()),
);

class ChatUserData {
  final rxTitle = 'ChatUser'.inj();

  final rxInt = 0.inj();
}
