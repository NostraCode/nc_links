part of '../_index.dart';

class RegisPwdA extends StatelessWidget {
  const RegisPwdA({Key? key}) : super(key: key);

  RegisCtrl get ct => x1RegisCtrl;
  RegisData get dt => x1RegisData.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rmForm,
      builder: () {
        return TextField(
          controller: dt.rmPwdA.controller,
          focusNode: dt.rmPwdA.focusNode,
          obscureText: dt.rmIsObscuredPwdA.st,
          onEditingComplete: () => dt.rmPwdB.focusNode.requestFocus(),
          decoration: InputDecoration(
            errorText: dt.rmPwdA.error,
            labelText: 'Password',
            hintText: 'type your password',
            suffixIcon: IconButton(
              icon: const Icon(Icons.remove_red_eye),
              splashRadius: 22,
              onPressed: () => ct.tooglePwdA(),
            ),
            suffixIconConstraints: const BoxConstraints(
              minHeight: 40,
              minWidth: 50,
            ),
          ),
        );
      },
    );
  }
}
