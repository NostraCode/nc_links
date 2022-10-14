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
            controller: dt.rxName.controller,
            focusNode: dt.rxName.focusNode,
            onEditingComplete: () => dt.focusScopeNode.nextFocus(),
            decoration: InputDecoration(
              hintText: "Name",
              labelText: 'Name',
              errorText: dt.rxName.error,
            ),
          ),
          const SizedBoxH(20),
          TextField(
            controller: dt.rxEmail.controller,
            focusNode: dt.rxEmail.focusNode,
            onEditingComplete: () => dt.focusScopeNode.unfocus(),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "your@email.com",
              labelText: "Email Address",
              errorText: dt.rxEmail.error,
            ),
          ),
        ],
      ),
    );
  }
}
