part of '_index.dart';

class CodeData {
  final rxTitle = 'Code'.inj();

  final rxInt = 0.inj();

  final rxConfirmationResult = Prov.auth.st.rxConfirmationResult;

  final rxPhoneAuthCredential = Prov.auth.st.rxPhoneAuthCredential;

  final rxVerificationId = Prov.auth.st.rxVerificationId;

  final rxAutoSmsCode = Prov.auth.st.rxAutoSmsCode;

  final rxFormCode = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {
      await Ctrl.code.confirmCode();
    },
  );

  final rxCode = RM.inject(
    () => RM.injectTextEditing(
      text: Prov.auth.st.rxAutoSmsCode.st ?? '',
      validators: [Validate.isNotEmpty, Validate.isNumeric],
    ),
  );
}
