part of '_index.dart';

final x1ChatDetailData = RM.inject<ChatDetailData>(
  () => ChatDetailData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1ChatDetailCtrl.init()),
);

class ChatDetailData {
  final rxTitle = 'ChatDetail'.inj();

  final rxInt = 0.inj();

  final rxTxtField = RM.injectTextEditing();

  final ownnerID = 0;

  final rxChatList = RM.inject<List<ChatData>>(
    () => chatListData,
  );
}

class ChatData {
  int ownerID;
  String message;
  String date;
  String time;

  ChatData(
    this.message, {
    this.ownerID = 0,
    this.date = '',
    this.time = '',
  });
}

final chatListData = [
  ChatData(
    '4 Jan 2022 lalala lalala lalala',
    ownerID: 1,
    date: '4 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '4 Jan 2022 hehehe hehehe hehehe',
    ownerID: 0,
    date: '4 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '4 Jan 2022 hehehe hehehe hehehe hehehe hehehe',
    ownerID: 0,
    date: '4 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '4 Jan 2022 hehehe hehehe hehehe hehehe hehehe',
    ownerID: 0,
    date: '4 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '4 Jan 2022 hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe',
    ownerID: 0,
    date: '4 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '4 Jan 2022 hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe',
    ownerID: 0,
    date: '4 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '3 Jan 2022 lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala',
    ownerID: 1,
    date: '3 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '3 Jan 2022 lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala',
    ownerID: 1,
    date: '3 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '2 Jan 2022 hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe',
    ownerID: 0,
    date: '2 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '2 Jan 2022 hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe',
    ownerID: 0,
    date: '2 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '2 Jan 2022 hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe',
    ownerID: 0,
    date: '2 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '2 Jan 2022 lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala',
    ownerID: 1,
    date: '2 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '1 Jan 2022 hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe hehehe',
    ownerID: 0,
    date: '1 Jan 2022',
    time: '20:00',
  ),
  ChatData(
    '1 Jan 2022 lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala lalala',
    ownerID: 1,
    date: '1 Jan 2022',
    time: '20:00',
  ),
];
