part of '../_index.dart';

class LoginPwd extends StatelessWidget {
  const LoginPwd({Key? key}) : super(key: key);

  LoginCtrl get ct => Ctrl.login;
  LoginData get dt => Data.login.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForx,
      builder: () {
        return TextField(
          controller: dt.rxPwd.controller,
          focusNode: dt.rxPwd.focusNode,
          obscureText: dt.rxIsObscuredPwd.st,
          onEditingComplete: () => dt.rxPwd.focusNode.unfocus(),
          decoration: InputDecoration(
            errorText: dt.rxPwd.error,
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
