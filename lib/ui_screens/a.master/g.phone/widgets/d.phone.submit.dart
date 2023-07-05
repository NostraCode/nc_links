part of '../_index.dart';

class PhoneSubmit extends StatelessWidget {
  const PhoneSubmit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxFormPhone,
      builder: () {
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: OutlinedButton(
            focusNode: _dt.rxFormPhone.submitFocusNode,
            onPressed: _dt.rxFormPhone.isValid ? () => _ct.submitPhone() : null,
            child: const Text('SUBMIT'),
          ),
        );
      },
    );
  }
}
