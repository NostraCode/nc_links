part of '../_index.dart';

class RegisPwdB extends StatelessWidget {
  const RegisPwdB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return TextField(
          controller: _dt.rxPwdB.controller,
          focusNode: _dt.rxPwdB.focusNode,
          obscureText: _dt.rxIsObscuredPwdB.st,
          onEditingComplete: () => _dt.rxPwdB.focusNode.unfocus(),
          decoration: InputDecoration(
            errorText: _dt.rxPwdB.error,
            labelText: 'Retype Password',
            hintText: 'retype your password',
            suffixIcon: IconButton(
              icon: const Icon(Icons.remove_red_eye),
              splashRadius: 22,
              onPressed: () => _ct.tooglePwdB(),
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
