part of '../_index.dart';

class ChatMessageTextField extends StatelessWidget {
  const ChatMessageTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: RawKeyboardListener(
        focusNode: FocusNode(),
        onKey: (event) => _ct.keyEventTrigger(event),
        child: TextField(
          controller: _dt.rxTxtField.controller,
          focusNode: _dt.rxTxtField.focusNode,
          minLines: 1,
          maxLines: 5,
          keyboardType: TextInputType.multiline,
        ),
      ),
    );
  }
}
