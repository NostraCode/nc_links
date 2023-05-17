part of '../_index.dart';

class RestEditEcho extends StatelessWidget {
  const RestEditEcho({Key? key}) : super(key: key);

  RestEditCtrl get ct => Ctrl.restEdit;
  RestEditData get dt => Data.restEdit.st;

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
              onPressed: dt.rxForm.isValid && dt.rxForm.isDirty ? () => ct.submit() : null,
              child: const Text('Submit'),
            ),
          ),
        );
      },
    );
  }
}
