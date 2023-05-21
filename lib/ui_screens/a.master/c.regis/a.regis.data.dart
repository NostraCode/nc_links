part of '_index.dart';

class RegisData {
  final rxTitle = 'Regis'.inj();

  final rxIsObscuredPwdA = true.inj();

  final rxIsObscuredPwdB = true.inj();

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await Ctrl.regis.createUserWithEmailAndPassword();
    },
  );

  final rxEmail = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );

  final rxPwdA = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.minChars],
  );

  final rxPwdB = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.minChars, Validate.pwdEquals],
  );
}
