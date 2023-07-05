part of '../_index.dart';

class OtpPhone extends StatelessWidget {
  const OtpPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxFormPhone,
      builder: () {
        return TextField(
          controller: _dt.rxPhone.controller,
          focusNode: _dt.rxPhone.focusNode,
          keyboardType: TextInputType.phone,
          onEditingComplete: () => _dt.rxPhone.focusNode.unfocus(),
          decoration: InputDecoration(
            labelText: 'Phone',
            hintText: '  your active phone number',
            errorText: _dt.rxPhone.error,
            prefixText: '+62',
          ),
        );
      },
    );
  }
}
