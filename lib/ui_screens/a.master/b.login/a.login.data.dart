part of '_index.dart';

final x1LoginData = RM.inject<LoginData>(
  () => LoginData(),
  debugPrintWhenNotifiedPreMessage: 'LoginxData',
  sideEffects: SideEffects(initState: () => x1LoginCtrl.init()),
);

class LoginData {
  final rmTitle = 'Login'.inj();

  final rmIsObscuredPwd = true.inj();

  final rmForm = RM.injectForm(
    submit: () async {
      await Future.delayed(1.seconds);
    },
  );

  final rmEmail = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );

  final rmPwd = RM.injectTextEditing(
    validateOnTyping: true,
    validators: [Validate.isNotEmpty, Validate.minChars],
  );
}
