part of '../_index.dart';

class InjFormCharlie extends StatelessWidget {
  const InjFormCharlie({Key? key}) : super(key: key);

  InjFormCtrl get ct => x1InjFormCtrl;
  InjFormData get dt => x1InjFormData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        children: [
          const SizedBoxH(20),
          TextField(
            controller: dt.rmEmail.controller,
            focusNode: dt.rmEmail.focusNode,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "your@email.com",
              labelText: "Email Address",
              errorText: dt.rmEmail.error,
            ),
          ),
          const SizedBoxH(20),
          TextField(
            controller: dt.rmPassword.controller,
            focusNode: dt.rmPassword.focusNode,
            decoration: InputDecoration(
              hintText: "Password",
              labelText: 'Password',
              errorText: dt.rmPassword.error,
            ),
          ),
        ],
      ),
    );
  }
}
