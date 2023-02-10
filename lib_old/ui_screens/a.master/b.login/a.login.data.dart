part of '_index.dart';

class LoginData {
  final rxTitle = 'Login'.inj();

  final rxIsObscuredPwd = true.inj();

  final rxForx = RM.injectForm(
    submit: () async {
      await Future.delayed(1.seconds);
    },
  );

  final rxEmail = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );

  final rxPwd = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty, Validate.minChars],
  );
}
