part of '../_index.dart';

class InjForxCharlie extends StatelessWidget {
  const InjForxCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        children: [
          const SizedBoxH(20),
          TextField(
            controller: _dt.rxEmail.controller,
            focusNode: _dt.rxEmail.focusNode,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "your@email.com",
              labelText: "Email Address",
              errorText: _dt.rxEmail.error,
            ),
          ),
          const SizedBoxH(20),
          TextField(
            controller: _dt.rxPassword.controller,
            focusNode: _dt.rxPassword.focusNode,
            decoration: InputDecoration(
              hintText: "Password",
              labelText: 'Password',
              errorText: _dt.rxPassword.error,
            ),
          ),
        ],
      ),
    );
  }
}
