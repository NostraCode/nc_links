part of '../_index.dart';

class RegisPwdB extends StatelessWidget {
  const RegisPwdB({Key? key}) : super(key: key);

  RegisCtrl get ct => Ctrl.regis;
  RegisData get dt => Data.regis.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForx,
      builder: () {
        return TextField(
          controller: dt.rxPwdB.controller,
          focusNode: dt.rxPwdB.focusNode,
          obscureText: dt.rxIsObscuredPwdB.st,
          onEditingComplete: () => dt.rxPwdB.focusNode.unfocus(),
          decoration: InputDecoration(
            errorText: dt.rxPwdB.error,
            labelText: 'Retype Password',
            hintText: 'retype your password',
            suffixIcon: IconButton(
              icon: const Icon(Icons.remove_red_eye),
              splashRadius: 22,
              onPressed: () => ct.tooglePwdB(),
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
