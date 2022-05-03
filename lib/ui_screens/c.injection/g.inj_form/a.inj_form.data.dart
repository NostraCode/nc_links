part of '_index.dart';

final x1InjFormData = RM.inject<InjFormData>(
  () => InjFormData(),
  debugPrintWhenNotifiedPreMessage: 'InjFormData',
  sideEffects: SideEffects(initState: () => x1InjFormCtrl.init()),
);

class InjFormData {
  final title = 'InjForm';

  final rmForm = RM.injectForm(
    submit: () async {
      await Future.delayed(1.seconds);
    },
    // By default form validation is done after field losing focus
    // autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rmEmail = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.isEmail],
  );

  final rmPassword = RM.injectTextEditing(
    validators: [Validate.isNotEmpty, Validate.minChars],
  );

  final rmCheck = RM.injectFormField<bool>(
    false,
    validators: [Validate.isChecked],
  );
}
