part of '../_index.dart';

class ChatListCharlie extends StatelessWidget {
  const ChatListCharlie({Key? key}) : super(key: key);

  ChatListCtrl get ct => x1ChatListCtrl;
  ChatListData get dt => x1ChatListData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
