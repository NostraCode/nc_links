part of '../_index.dart';

class RegisEmail extends StatelessWidget {
  const RegisEmail({Key? key}) : super(key: key);

  RegisCtrl get ct => x1RegisCtrl;
  RegisData get dt => x1RegisData.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForx,
      builder: () {
        return TextField(
          controller: dt.rxEmail.controller,
          focusNode: dt.rxEmail.focusNode,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => dt.rxPwdA.focusNode.requestFocus(),
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'type your email',
            errorText: dt.rxEmail.error,
          ),
        );
      },
    );
  }
}
