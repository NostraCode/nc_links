part of '../_index.dart';

class OtpPhone extends StatelessWidget {
  const OtpPhone({Key? key}) : super(key: key);

  OtpCtrl get ct => Ctrl.otp;
  OtpData get dt => Data.otp.st;

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
