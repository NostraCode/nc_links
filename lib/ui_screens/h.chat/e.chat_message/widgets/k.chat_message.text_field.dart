part of '../_index.dart';

class ChatMessageTextField extends StatelessWidget {
  const ChatMessageTextField({Key? key}) : super(key: key);

  ChatMessageCtrl get ct => Ctrl.chatMessage;
  ChatMessageData get dt => Data.chatMessage.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: RawKeyboardListener(
        focusNode: FocusNode(),
        onKey: (event) => ct.keyEventTrigger(event),
        child: TextField(
          controller: dt.rxTxtField.controller,
          focusNode: dt.rxTxtField.focusNode,
          minLines: 1,
          maxLines: 5,
          keyboardType: TextInputType.multiline,
        ),
      ),
    );
  }
}
