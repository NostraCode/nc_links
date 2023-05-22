part of '_index.dart';

class ForgetData {
  final rxTitle = 'Forget'.inj();

  final rxInt = 0.inj();

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await Ctrl.forget.sendPasswordResetEmail();
    },
  );

  final rxEmail = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );
}
