part of '../_index.dart';

class ChatDetailInput extends StatelessWidget {
  const ChatDetailInput({Key? key}) : super(key: key);

  ChatDetailCtrl get ct => x1ChatDetailCtrl;
  ChatDetailData get dt => x1ChatDetailData.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          SizedBox(width: 2),
          Expanded(
            child: ChatDetailTextField(),
          ),
          ChatDetailTextBtn(),
          SizedBox(width: 6),
        ],
      ),
    );
  }
}
