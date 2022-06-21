part of '_index.dart';

final x1RestInputData = RM.inject<RestInputData>(
  () => RestInputData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1RestInputCtrl.init()),
);

class RestInputData {
  final title = 'RestInput';

  final focusScopeNode = FocusScopeNode();

  final rxForm = RM.injectForm(
    submit: () async {
      await x1RestInputCtrl.createUser();
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
