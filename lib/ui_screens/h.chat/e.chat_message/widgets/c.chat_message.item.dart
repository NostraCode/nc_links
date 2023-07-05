part of '../_index.dart';

class ChatMessageItem extends StatelessWidget {
  final int index;
  const ChatMessageItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: _ct.isEndOfDate(index),
          child: ChatMessageDate(index: index),
        ),
        ChatMessageBalloon(
          index: index,
          isSend: _ct.isSend(_dt.rxChatMessages.st[index].idUser),
          isNip: _ct.isNip(index),
        ),
      ],
    );
  }
}
