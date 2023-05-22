part of '../_index.dart';

class OtpBtnCode extends StatelessWidget {
  const OtpBtnCode({Key? key}) : super(key: key);

  OtpCtrl get ct => Ctrl.otp;
  OtpData get dt => Data.otp.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxFormCode,
      builder: () {
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: OnFormSubmissionBuilder(
            listenTo: dt.rxFormCode,
            onSubmitting: () => const Center(
              child: CircularProgressIndicator(),
            ),
            child: OutlinedButton(
              focusNode: dt.rxFormCode.submitFocusNode,
              onPressed: dt.rxFormCode.isValid ? () => ct.submitCode() : null,
              child: const Text('SUBMIT'),
            ),
          ),
        );
      },
    );
  }
}
