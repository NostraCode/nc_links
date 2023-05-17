part of '_index.dart';

class RestEditData {
  final title = 'RestEdit';

  final selectedId = Prov.userx.st.rxSelectedId;

  final focusScopeNode = FocusScopeNode();

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.always,
    submit: () async {
      await Ctrl.restEdit.updateUser();
    },
  );

  final rxName = RM.inject(
    () => RM.injectTextEditing(
      text: Prov.userx.st.rxUserDetail.st!.name,
      validators: [Validate.isNotEmpty, Validate.minChars],
    ),
  );

  final rxEmail = RM.inject(
    () => RM.injectTextEditing(
      text: Prov.userx.st.rxUserDetail.st!.email,
      validators: [Validate.isNotEmpty, Validate.isEmail],
    ),
  );

  final rxGender = RM.inject(
    () => RM.injectFormField<String?>(
      Prov.userx.st.rxUserDetail.st!.gender,
      validators: [Validate.isNotEmpty],
    ),
  );

  final rxStatus = RM.inject(
    () => RM.injectFormField<String?>(
      Prov.userx.st.rxUserDetail.st!.status,
      validators: [Validate.isNotEmpty],
    ),
  );

  //! ----- ----- ----- ----- ----- ----- ----- ----- -----

  // final rxForm = RM.injectForm(
  //   autovalidateMode: AutovalidateMode.onUserInteraction,
  //   submit: () async {
  //     await Ctrl.restEdit.updateUser();
  //   },
  // );

  // final rxName = RM.injectTextEditing(
  //   text: Prov.userx.st.rxUserDetail.st!.name,
  //   validators: [Validate.isNotEmpty, Validate.minChars],
  // );

  // final rxEmail = RM.injectTextEditing(
  //   text: Prov.userx.st.rxUserDetail.st!.email,
  //   validators: [Validate.isNotEmpty, Validate.isEmail],
  // );

  // final rxGender = RM.injectFormField<String?>(
  //   Prov.userx.st.rxUserDetail.st!.gender,
  //   validators: [Validate.isNotEmpty],
  // );

  // final rxStatus = RM.injectFormField<String?>(
  //   Prov.userx.st.rxUserDetail.st!.status,
  //   validators: [Validate.isNotEmpty],
  // );
}
