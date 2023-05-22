part of '_index.dart';

class OtpData {
  final rxTitle = 'Otp'.inj();

  final rxInt = 0.inj();

  final confirmationResult = Prov.auth.st.confirmationResult;

  final rxFormPhone = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await Ctrl.otp.signInWithPhoneNumber();
    },
  );

  final rxFormCode = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await Ctrl.otp.confirmCode();
    },
  );

  final rxPhone = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isNumeric],
  );

  final rxCode = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isNumeric],
  );
}
