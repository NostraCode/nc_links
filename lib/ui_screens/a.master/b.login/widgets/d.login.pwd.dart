part of '../_index.dart';

class LoginPwd extends StatelessWidget {
  const LoginPwd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return TextField(
          controller: _dt.rxPwd.controller,
          focusNode: _dt.rxPwd.focusNode,
          obscureText: _dt.rxIsObscuredPwd.st,
          onEditingComplete: () => _dt.rxPwd.focusNode.unfocus(),
          decoration: InputDecoration(
            errorText: _dt.rxPwd.error,
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
