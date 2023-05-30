part of '../_index.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({Key? key}) : super(key: key);

  PhoneCtrl get ct => Ctrl.phone;
  PhoneData get dt => Data.phone.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxFormPhone,
      builder: () {
        return TextField(
          controller: dt.rxPhone.controller,
          focusNode: dt.rxPhone.focusNode,
          keyboardType: TextInputType.phone,
          onEditingComplete: () => dt.rxPhone.focusNode.unfocus(),
          decoration: InputDecoration(
            labelText: 'Phone',
            hintText: '  your active phone number',
            errorText: dt.rxPhone.error,
            prefixText: '+62',
          ),
        );
      },
    );
  }
}
