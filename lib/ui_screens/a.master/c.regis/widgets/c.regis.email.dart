part of '../_index.dart';

class RegisEmail extends StatelessWidget {
  const RegisEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return TextField(
          controller: _dt.rxEmail.controller,
          focusNode: _dt.rxEmail.focusNode,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => _dt.rxPwdA.focusNode.requestFocus(),
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'type your email',
            errorText: _dt.rxEmail.error,
          ),
        );
      },
    );
  }
}
