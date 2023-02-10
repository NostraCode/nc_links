part of '../_index.dart';

class RegisPwdA extends StatelessWidget {
  const RegisPwdA({Key? key}) : super(key: key);

  RegisCtrl get ct => Ctrl.regis;
  RegisData get dt => Data.regis.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForx,
      builder: () {
        return TextField(
          controller: dt.rxPwdA.controller,
          focusNode: dt.rxPwdA.focusNode,
          obscureText: dt.rxIsObscuredPwdA.st,
          onEditingComplete: () => dt.rxPwdB.focusNode.requestFocus(),
          decoration: InputDecoration(
            errorText: dt.rxPwdA.error,
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
