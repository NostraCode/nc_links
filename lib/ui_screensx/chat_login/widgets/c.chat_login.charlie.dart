part of '../_index.dart';

class ChatLoginCharlie extends StatelessWidget {
  const ChatLoginCharlie({Key? key}) : super(key: key);

  ChatLoginCtrl get ct => x1ChatLoginCtrl;
  ChatLoginData get dt => x1ChatLoginData.st;

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
