part of '_index.dart';

final x1RestEditData = RM.inject<RestEditData>(
  () => RestEditData(),
  debugPrintWhenNotifiedPreMessage: 'RestEditData',
  sideEffects: SideEffects(initState: () => x1RestEditCtrl.init()),
);

class RestEditData {
  final title = 'RestEdit';

  final selectedId = x1UserData.st.rmSelectedId;

  final focusScopeNode = FocusScopeNode();

  final rmForm = RM.injectForm(
    submit: () async {
      await x1RestEditCtrl.updateUser();
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
