part of '../_index.dart';

class LoginPwd extends StatelessWidget {
  const LoginPwd({Key? key}) : super(key: key);

  LoginCtrl get ct => x1LoginCtrl;
  LoginData get dt => x1LoginData.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rmForm,
      builder: () {
        return TextField(
          controller: dt.rmPwd.controller,
          focusNode: dt.rmPwd.focusNode,
          obscureText: dt.rmIsObscuredPwd.st,
          onEditingComplete: () => dt.rmPwd.focusNode.unfocus(),
          decoration: InputDecoration(
            errorText: dt.rmPwd.error,
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
