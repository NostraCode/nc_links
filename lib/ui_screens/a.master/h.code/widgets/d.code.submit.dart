part of '../_index.dart';

class CodeSubmit extends StatelessWidget {
  const CodeSubmit({Key? key}) : super(key: key);

  CodeCtrl get ct => Ctrl.code;
  CodeData get dt => Data.code.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxFormCode,
      builder: () {
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: OutlinedButton(
            focusNode: dt.rxFormCode.submitFocusNode,
            onPressed: dt.rxFormCode.isValid ? () => ct.submitCode() : null,
            child: const Text('SUBMIT'),
          ),
        );
      },
    );
  }
}
