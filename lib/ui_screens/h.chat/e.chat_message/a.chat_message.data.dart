part of '_index.dart';

class ChatMessageData {
  final rxTitle = 'ChatMessage'.inj();

  final rxInt = 0.inj();

  final rxTxtField = RM.injectTextEditing();

  final rxChatMessages = Prov.chat.st.rxChatMessages;
}
