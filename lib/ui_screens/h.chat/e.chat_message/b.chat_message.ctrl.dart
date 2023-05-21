part of '_index.dart';

class ChatMessageCtrl {
  ChatMessageData get dt => Data.chatMessage.st;

  init() => logxx.i(ChatMessageCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  bool isSend(String ownnerID) {
    return ownnerID == Prov.auth.st.rxUserApp.st?.uid;
  }

  bool isNip(int i) {
    if (isEndOfGroupedList(i) || isEndOfDate(i)) {
      return true;
    }
    return false;
  }

  bool isEndOfGroupedList(int i) {
    if (i < dt.rxChatMessages.st.length - 1) {
      final currentOwennerID = dt.rxChatMessages.st[i].idUser;
      final nextOwnnerID = dt.rxChatMessages.st[i + 1].idUser;
      if (currentOwennerID != nextOwnnerID) {
        return true;
      }
    }
    return false;
  }

  bool isEndOfDate(int i) {
    if (i < dt.rxChatMessages.st.length - 1) {
      final currentDate = getDate(dt.rxChatMessages.st[i].timestamp);
      final nextDate = getDate(dt.rxChatMessages.st[i + 1].timestamp);
      if (currentDate == nextDate) {
        return false;
      }
    }
    return true;
  }

  String getDate(int timestamp) {
    final dt = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return DateFormat('d MMMM y').format(dt);
  }

  String getTime(int timestamp) {
    final dt = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return DateFormat('HH:mm').format(dt);
  }

  keyEventTrigger(RawKeyEvent event) {
    //* if "cmd + enter" or "ctrl + enter" pressed down
    if (event.data.isMetaPressed || event.data.isControlPressed) {
      if (event.data.logicalKey.keyId == 4294967309) {
        if (event.runtimeType == RawKeyDownEvent) {
          logxx.w(ChatMessageCtrl, event.runtimeType.toString());
          logxx.w(ChatMessageCtrl, event.data.logicalKey.keyId.toString());
          send();
        }
      }
    }
  }

  send() {
    final trimmedMessage = trimLastLine(dt.rxTxtField.controller.text);
    if (trimmedMessage.isNotEmpty) {
      final user = Prov.auth.st.rxUserApp.st;
      final chatMessage = ChatMessage(
        displayName: user?.displayName ?? 'anonymous',
        idUser: user?.uid ?? 'anonymous',
        timestamp: DateTime.now().millisecondsSinceEpoch,
        message: trimmedMessage,
      );
      Serv.chat.sendMessage(chatMessage);
      dt.rxTxtField.controller.clear();
    }
  }

  String trimLastLine(String textRaw) {
    var text = textRaw;
    while (text.endsWith('\n')) {
      logxx.w(ChatMessageCtrl, text);
      text = text.substring(0, text.length - 1);
    }
    logxx.s(ChatMessageCtrl, text);
    return text;
  }
}
