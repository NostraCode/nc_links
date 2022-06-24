part of '../_index.dart';

class ChatDetailDate extends StatelessWidget {
  final int index;
  const ChatDetailDate({
    Key? key,
    required this.index,
  }) : super(key: key);

  ChatDetailCtrl get ct => x1ChatDetailCtrl;
  ChatDetailData get dt => x1ChatDetailData.st;

  @override
  Widget build(BuildContext context) {
    final item = dt.rxChatList.st[index];

    return Container(
      margin: const EdgeInsets.fromLTRB(8, 14, 8, 6),
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: Text(
        item.date,
        textScaleFactor: 0.75,
      ),
    );
  }
}
