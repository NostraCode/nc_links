part of '../_index.dart';

class RestInputCharlie extends StatelessWidget {
  const RestInputCharlie({Key? key}) : super(key: key);

  RestInputCtrl get ct => x1RestInputCtrl;
  RestInputData get dt => x1RestInputData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        children: [
          TextField(
            controller: dt.rmName.controller,
            focusNode: dt.rmName.focusNode,
            onEditingComplete: () => dt.focusScopeNode.nextFocus(),
            decoration: InputDecoration(
              hintText: "Name",
              labelText: 'Name',
              errorText: dt.rmName.error,
            ),
          ),
          const SizedBoxH(20),
          TextField(
            controller: dt.rmEmail.controller,
            focusNode: dt.rmEmail.focusNode,
            onEditingComplete: () => dt.focusScopeNode.unfocus(),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "your@email.com",
              labelText: "Email Address",
              errorText: dt.rmEmail.error,
            ),
          ),
        ],
      ),
    );
  }
}
