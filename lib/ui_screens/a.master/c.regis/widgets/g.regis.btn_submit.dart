part of '../_index.dart';

class RegisBtnSubmit extends StatelessWidget {
  const RegisBtnSubmit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: OnFormSubmissionBuilder(
            listenTo: _dt.rxForm,
            onSubmitting: () => const Center(
              child: CircularProgressIndicator(),
            ),
            child: OutlinedButton(
              focusNode: _dt.rxForm.submitFocusNode,
              onPressed: _dt.rxForm.isValid ? () => _ct.submit() : null,
              child: const Text('REGISTER'),
            ),
          ),
        );
      },
    );
  }
}
