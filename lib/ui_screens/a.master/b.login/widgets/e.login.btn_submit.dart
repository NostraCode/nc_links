part of '../_index.dart';

class LoginBtnSubmit extends StatelessWidget {
  const LoginBtnSubmit({Key? key}) : super(key: key);

  LoginCtrl get ct => Ctrl.login;
  LoginData get dt => Data.login.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () {
        return SizedBox(
          width: double.infinity,
          height: 40,
          child: OnFormSubmissionBuilder(
            listenTo: dt.rxForm,
            onSubmitting: () => const Center(
              child: CircularProgressIndicator(),
            ),
            child: OutlinedButton(
              focusNode: dt.rxForm.submitFocusNode,
              onPressed: dt.rxForm.isValid ? () => ct.submit() : null,
              child: const Text('SIGN IN'),
            ),
          ),
        );
      },
    );
  }
}
