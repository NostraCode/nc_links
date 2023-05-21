part of '_index.dart';

class LoginData {
  final rxTitle = 'Login'.inj();

  final rxIsObscuredPwd = true.inj();

  final rxUser = Prov.auth.st.rxUserApp;

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await Ctrl.login.signInWithEmailAndPassword();
    },
  );

  final rxEmail = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );

  final rxPwd = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.minChars],
  );
}
