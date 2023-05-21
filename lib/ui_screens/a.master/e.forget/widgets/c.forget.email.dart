part of '../_index.dart';

class ForgetEmail extends StatelessWidget {
  const ForgetEmail({Key? key}) : super(key: key);

  ForgetCtrl get ct => Ctrl.forget;
  ForgetData get dt => Data.forget.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () {
        return TextField(
          controller: dt.rxEmail.controller,
          focusNode: dt.rxEmail.focusNode,
          keyboardType: TextInputType.emailAddress,
          onEditingComplete: () => dt.rxEmail.focusNode.unfocus(),
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
