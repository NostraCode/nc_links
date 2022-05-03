part of '../_index.dart';

class LoginEmail extends StatelessWidget {
  const LoginEmail({Key? key}) : super(key: key);

  LoginCtrl get ct => x1LoginCtrl;
  LoginData get dt => x1LoginData.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rmForm,
      builder: () {
        return TextField(
          controller: dt.rmEmail.controller,
          focusNode: dt.rmEmail.focusNode,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => dt.rmPwd.focusNode.requestFocus(),
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'type your email',
            errorText: dt.rmEmail.error,
          ),
        );
      },
    );
  }
}
