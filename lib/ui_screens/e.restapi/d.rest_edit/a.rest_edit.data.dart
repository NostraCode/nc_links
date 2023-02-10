part of '_index.dart';

class RestEditData {
  final title = 'RestEdit';

  final selectedId = Prov.userx.st.rxSelectedId;

  final focusScopeNode = FocusScopeNode();

  final rxForm = RM.injectForm(
    submit: () async {
      await Ctrl.restEdit.updateUser();
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
