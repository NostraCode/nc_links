part of '../_index.dart';

class CodeSubmit extends StatelessWidget {
  const CodeSubmit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxFormCode,
      builder: () {
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: OutlinedButton(
            focusNode: _dt.rxFormCode.submitFocusNode,
            onPressed: _dt.rxFormCode.isValid ? () => _ct.submitCode() : null,
            child: const Text('SUBMIT'),
          ),
        );
      },
    );
  }
}
