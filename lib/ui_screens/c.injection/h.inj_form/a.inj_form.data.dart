part of '_index.dart';

final x1InjFormData = RM.inject<InjFormData>(
  () => InjFormData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1InjFormCtrl.init()),
);

class InjFormData {
  final title = 'InjForx';

  final rxForx = RM.injectForm(
    submit: () async {
      await Future.delayed(1.seconds);
    },
    // By default forx validation is done after field losing focus
    // autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxEmail = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );

  final rxPassword = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.minChars],
  );

  final rxCheck = RM.injectFormField<bool>(
    false,
    validators: [Validate.isChecked],
  );
}
