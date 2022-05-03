part of '_index.dart';

final x1RestInputData = RM.inject<RestInputData>(
  () => RestInputData(),
  debugPrintWhenNotifiedPreMessage: 'RestInputData',
  sideEffects: SideEffects(initState: () => x1RestInputCtrl.init()),
);

class RestInputData {
  final title = 'RestInput';

  final focusScopeNode = FocusScopeNode();

  final rmForm = RM.injectForm(
    submit: () async {
      await x1RestInputCtrl.createUser();
    },
  );

  final rmName = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.minChars],
  );

  final rmEmail = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );

  final rmGender = RM.injectFormField<String>(
    'female',
    validators: [Validate.isNotEmpty],
  );

  final rmStatus = RM.injectFormField<String>(
    'inactive',
    validators: [Validate.isNotEmpty],
  );
}
