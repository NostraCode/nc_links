part of '../_index.dart';

class RestInputEcho extends StatelessWidget {
  const RestInputEcho({Key? key}) : super(key: key);

  RestInputCtrl get ct => Ctrl.restInput;
  RestInputData get dt => Data.restInput.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () {
        return Center(
          child: OnFormSubmissionBuilder(
            listenTo: dt.rxForm,
            onSubmitting: () => const CircularProgressIndicator(),
            child: ElevatedButton(
              focusNode: dt.rxForm.submitFocusNode,
              onPressed: dt.rxForm.isValid ? () => ct.submit() : null,
              child: const Text('Submit'),
            ),
          ),
        );
      },
    );
  }
}
