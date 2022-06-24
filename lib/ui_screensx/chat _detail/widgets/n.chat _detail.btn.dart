part of '../_index.dart';

class ChatDetailTextBtn extends StatelessWidget {
  const ChatDetailTextBtn({Key? key}) : super(key: key);

  ChatDetailCtrl get ct => x1ChatDetailCtrl;
  ChatDetailData get dt => x1ChatDetailData.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 54,
      height: 60,
      child: Center(
        child: ElevatedButton(
          style: TextButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(12),
          ),
          child: const Icon(Icons.send),
          onPressed: () => ct.send(),
        ),
      ),
    );
  }
}
