part of '../_index.dart';

class ChatDetailTextField extends StatelessWidget {
  const ChatDetailTextField({Key? key}) : super(key: key);

  ChatDetailCtrl get ct => x1ChatDetailCtrl;
  ChatDetailData get dt => x1ChatDetailData.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: TextField(
        controller: dt.rxTxtField.controller,
        focusNode: dt.rxTxtField.focusNode,
        minLines: 1,
        maxLines: 5,
        keyboardType: TextInputType.multiline,
      ),
    );
  }
}
