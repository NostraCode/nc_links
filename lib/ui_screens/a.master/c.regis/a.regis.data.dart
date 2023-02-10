part of '_index.dart';

class RegisData {
  final rxTitle = 'Regis'.inj();

  final rxIsObscuredPwdA = true.inj();

  final rxIsObscuredPwdB = true.inj();

  final rxForx = RM.injectForm(
    submit: () async {
      await Future.delayed(1.seconds);
    },
  );

  final rxEmail = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );

  final rxPwdA = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty, Validate.minChars],
  );

  final rxPwdB = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty, Validate.minChars, Validate.pwdEquals],
  );
}
