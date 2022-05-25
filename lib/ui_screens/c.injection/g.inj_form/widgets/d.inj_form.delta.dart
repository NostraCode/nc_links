part of '../_index.dart';

class InjForxDelta extends StatelessWidget {
  const InjForxDelta({Key? key}) : super(key: key);

  InjFormCtrl get ct => x1InjFormCtrl;
  InjFormData get dt => x1InjFormData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => OnFormFieldBuilder<bool>(
        listenTo: dt.rxCheck,
        inputDecoration: InputDecoration(
          errorText: dt.rxCheck.error,
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        builder: (value, onChanged) {
          return CheckboxListTile(
            dense: true,
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: const EdgeInsets.all(0),
            value: value,
            onChanged: onChanged,
            title: const Text('I accept the license agreement'),
          );
        },
      ),
    );
  }
}
