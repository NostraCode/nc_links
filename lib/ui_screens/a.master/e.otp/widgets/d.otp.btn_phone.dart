part of '../_index.dart';

class OtpBtnPhone extends StatelessWidget {
  const OtpBtnPhone({Key? key}) : super(key: key);

  OtpCtrl get ct => Ctrl.otp;
  OtpData get dt => Data.otp.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxFormPhone,
      builder: () {
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: OnFormSubmissionBuilder(
            listenTo: dt.rxFormPhone,
            onSubmitting: () => const Center(
              child: CircularProgressIndicator(),
            ),
            child: OutlinedButton(
              focusNode: dt.rxFormPhone.submitFocusNode,
              onPressed: dt.rxFormPhone.isValid ? () => ct.submitPhone() : null,
              child: const Text('SUBMIT'),
            ),
          ),
        );
      },
    );
  }
}
