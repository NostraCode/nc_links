part of '../_index.dart';

class InjForxDelta extends StatelessWidget {
  const InjForxDelta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => OnFormFieldBuilder<bool>(
        listenTo: _dt.rxCheck,
        inputDecoration: InputDecoration(
          errorText: _dt.rxCheck.error,
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
