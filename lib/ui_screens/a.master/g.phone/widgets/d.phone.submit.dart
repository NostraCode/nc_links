part of '../_index.dart';

class PhoneSubmit extends StatelessWidget {
  const PhoneSubmit({Key? key}) : super(key: key);

  PhoneCtrl get ct => Ctrl.phone;
  PhoneData get dt => Data.phone.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxFormPhone,
      builder: () {
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: OutlinedButton(
            focusNode: dt.rxFormPhone.submitFocusNode,
            onPressed: dt.rxFormPhone.isValid ? () => ct.submitPhone() : null,
            child: const Text('SUBMIT'),
          ),
        );
      },
    );
  }
}
