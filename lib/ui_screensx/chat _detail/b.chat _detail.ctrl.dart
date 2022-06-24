part of '_index.dart';

final x1ChatDetailCtrl = ChatDetailCtrl();

class ChatDetailCtrl {
  ChatDetailData get dt => x1ChatDetailData.st;

  init() => logxx.i(ChatDetailCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  bool isSend(int ownnerID) => ownnerID == dt.ownnerID;

  bool isNip(int i) {
    if (isEndOfGroupedList(i) || isEndOfDate(i)) {
      return true;
    }
    return false;
  }

  bool isEndOfGroupedList(int i) {
    if (i < dt.rxChatList.st.length - 1) {
      final currentOwennerID = dt.rxChatList.st[i].ownerID;
      final nextOwnnerID = dt.rxChatList.st[i + 1].ownerID;
      if (currentOwennerID != nextOwnnerID) {
        return true;
      }
    }
    return false;
  }

  bool isEndOfDate(int i) {
    if (i < dt.rxChatList.st.length - 1) {
      final currentDate = dt.rxChatList.st[i].date;
      final nextDate = dt.rxChatList.st[i + 1].date;
      if (currentDate == nextDate) {
        return false;
      }
    }
    return true;
  }

  send() {
    if (dt.rxTxtField.controller.text != '') {
      final chat = ChatData(
        dt.rxTxtField.controller.text,
        ownerID: 0,
        date: '5 Jan 2022',
        time: '20:00',
      );
      dt.rxChatList.setState((s) => [chat, ...s]);
    }
    dt.rxTxtField.controller.clear();
    dt.rxTxtField.focusNode.unfocus();
  }
}
