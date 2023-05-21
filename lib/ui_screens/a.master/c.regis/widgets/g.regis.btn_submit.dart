part of '../_index.dart';

class RegisBtnSubmit extends StatelessWidget {
  const RegisBtnSubmit({Key? key}) : super(key: key);

  RegisCtrl get ct => Ctrl.regis;
  RegisData get dt => Data.regis.st;

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
              child: const Text('REGISTER'),
            ),
          ),
        );
      },
    );
  }
}
