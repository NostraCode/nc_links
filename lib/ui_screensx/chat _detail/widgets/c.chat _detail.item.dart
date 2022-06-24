part of '../_index.dart';

class ChatDetailItem extends StatelessWidget {
  final int index;
  const ChatDetailItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  ChatDetailCtrl get ct => x1ChatDetailCtrl;
  ChatDetailData get dt => x1ChatDetailData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: ct.isEndOfDate(index),
          child: ChatDetailDate(index: index),
        ),
        ChatDetailBalloon(
          index: index,
          isSend: ct.isSend(dt.rxChatList.st[index].ownerID),
          isNip: ct.isNip(index),
        ),
      ],
    );
  }
}
