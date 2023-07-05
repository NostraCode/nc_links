part of '../_index.dart';

class RestEditEcho extends StatelessWidget {
  const RestEditEcho({Key? key}) : super(key: key);

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
              onPressed: _dt.rxForm.isValid && _dt.rxForm.isDirty ? () => _ct.submit() : null,
              child: const Text('Submit'),
            ),
          ),
        );
      },
    );
  }
}
