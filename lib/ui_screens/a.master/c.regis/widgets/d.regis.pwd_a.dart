part of '../_index.dart';

class RegisPwdA extends StatelessWidget {
  const RegisPwdA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return TextField(
          controller: _dt.rxPwdA.controller,
          focusNode: _dt.rxPwdA.focusNode,
          obscureText: _dt.rxIsObscuredPwdA.st,
          onEditingComplete: () => _dt.rxPwdB.focusNode.requestFocus(),
          decoration: InputDecoration(
            errorText: _dt.rxPwdA.error,
            labelText: 'Password',
            hintText: 'type your password',
            suffixIcon: IconButton(
              icon: const Icon(Icons.remove_red_eye),
              splashRadius: 22,
              onPressed: () => _ct.tooglePwdA(),
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
