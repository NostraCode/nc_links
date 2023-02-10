part of '_index.dart';

class RestInputData {
  final title = 'RestInput';

  final focusScopeNode = FocusScopeNode();

  final rxForm = RM.injectForm(
    submit: () async {
      await Ctrl.restInput.createUser();
    },
  );

  final rxName = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.minChars],
  );

  final rxEmail = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );

  final rxGender = RM.injectFormField<String>(
    'female',
    validators: [Validate.isNotEmpty],
  );

  final rxStatus = RM.injectFormField<String>(
    'inactive',
    validators: [Validate.isNotEmpty],
  );

  final rxPickedFile = RM.inject<XFile?>(() => null);

  final rxImageUrl = RM.inject<String?>(() => null);
}
