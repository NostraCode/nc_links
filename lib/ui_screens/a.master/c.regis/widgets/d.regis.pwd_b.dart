part of '../_index.dart';

class RegisPwdB extends StatelessWidget {
  const RegisPwdB({Key? key}) : super(key: key);

  RegisCtrl get ct => x1RegisCtrl;
  RegisData get dt => x1RegisData.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rmForm,
      builder: () {
        return TextField(
          controller: dt.rmPwdB.controller,
          focusNode: dt.rmPwdB.focusNode,
          obscureText: dt.rmIsObscuredPwdB.st,
          onEditingComplete: () => dt.rmPwdB.focusNode.unfocus(),
          decoration: InputDecoration(
            errorText: dt.rmPwdB.error,
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
