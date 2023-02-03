part of '_index.dart';

final x1ChatMessageData = RM.inject<ChatMessageData>(
  () => ChatMessageData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ChatMessageCtrl.init()),
);

class ChatMessageData {
  final rxTitle = 'ChatMessage'.inj();

  final rxInt = 0.inj();

  final rxTxtField = RM.injectTextEditing();

  final rxChatMessages = x1ChatProv.st.rxChatMessages;
}
