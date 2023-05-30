part of '_index.dart';

class PhoneData {
  final rxTitle = 'Phone'.inj();

  final rxInt = 0.inj();

  final rxFormPhone = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await Ctrl.phone.signInWithPhoneNumber();
    },
  );

  final rxPhone = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isNumeric],
  );
}
