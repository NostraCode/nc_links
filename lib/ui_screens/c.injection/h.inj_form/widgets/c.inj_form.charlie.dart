part of '../_index.dart';

class InjForxCharlie extends StatelessWidget {
  const InjForxCharlie({Key? key}) : super(key: key);

  InjFormCtrl get ct => Ctrl.injForm;
  InjFormData get dt => Data.injForm.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        children: [
          const SizedBoxH(20),
          TextField(
            controller: dt.rxEmail.controller,
            focusNode: dt.rxEmail.focusNode,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "your@email.com",
              labelText: "Email Address",
              errorText: dt.rxEmail.error,
            ),
          ),
          const SizedBoxH(20),
          TextField(
            controller: dt.rxPassword.controller,
            focusNode: dt.rxPassword.focusNode,
            decoration: InputDecoration(
              hintText: "Password",
              labelText: 'Password',
              errorText: dt.rxPassword.error,
            ),
          ),
        ],
      ),
    );
  }
}
