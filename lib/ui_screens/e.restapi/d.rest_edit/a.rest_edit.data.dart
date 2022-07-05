part of '_index.dart';

final x1RestEditData = RM.inject<RestEditData>(
  () => RestEditData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1RestEditCtrl.init()),
);

class RestEditData {
  final title = 'RestEdit';

  final selectedId = x1UserxData.st.rxSelectedId;

  final focusScopeNode = FocusScopeNode();

  final rxForm = RM.injectForm(
    submit: () async {
      await x1RestEditCtrl.updateUser();
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
}
