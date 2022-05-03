part of '_index.dart';

final x1RegisData = RM.inject<RegisData>(
  () => RegisData(),
  debugPrintWhenNotifiedPreMessage: 'RegisxData',
  sideEffects: SideEffects(initState: () => x1RegisCtrl.init()),
);

class RegisData {
  final rmTitle = 'Regis'.inj();

  final rmIsObscuredPwdA = true.inj();

  final rmIsObscuredPwdB = true.inj();

  final rmForm = RM.injectForm(
    submit: () async {
      await Future.delayed(1.seconds);
    },
  );

  final rmEmail = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );

  final rmPwdA = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty, Validate.minChars],
  );

  final rmPwdB = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty, Validate.minChars, Validate.pwdEquals],
  );
}
