part of '../_index.dart';

class LoginEmail extends StatelessWidget {
  const LoginEmail({Key? key}) : super(key: key);

  LoginCtrl get ct => Ctrl.login;
  LoginData get dt => Data.login.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () {
        return TextField(
          controller: dt.rxEmail.controller,
          focusNode: dt.rxEmail.focusNode,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => dt.rxPwd.focusNode.requestFocus(),
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'type your email',
            errorText: dt.rxEmail.error,
          ),
        );
      },
    );
  }
}
