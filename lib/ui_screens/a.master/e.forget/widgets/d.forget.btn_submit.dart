part of '../_index.dart';

class ForgetBtnSubmit extends StatelessWidget {
  const ForgetBtnSubmit({Key? key}) : super(key: key);

  ForgetCtrl get ct => Ctrl.forget;
  ForgetData get dt => Data.forget.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () {
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: OnFormSubmissionBuilder(
            listenTo: dt.rxForm,
            onSubmitting: () => const Center(
              child: CircularProgressIndicator(),
            ),
            child: OutlinedButton(
              focusNode: dt.rxForm.submitFocusNode,
              onPressed: dt.rxForm.isValid ? () => ct.submit() : null,
              child: const Text('RESET PASSWORD'),
            ),
          ),
        );
      },
    );
  }
}
