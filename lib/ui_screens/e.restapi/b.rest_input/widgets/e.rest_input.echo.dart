part of '../_index.dart';

class RestInputEcho extends StatelessWidget {
  const RestInputEcho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return Center(
          child: OnFormSubmissionBuilder(
            listenTo: _dt.rxForm,
            onSubmitting: () => const CircularProgressIndicator(),
            child: ElevatedButton(
              focusNode: _dt.rxForm.submitFocusNode,
              onPressed: _dt.rxForm.isValid ? () => _ct.submit() : null,
              child: const Text('Submit'),
            ),
          ),
        );
      },
    );
  }
}
