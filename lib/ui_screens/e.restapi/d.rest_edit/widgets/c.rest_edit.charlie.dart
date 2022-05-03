part of '../_index.dart';

class RestEditCharlie extends StatelessWidget {
  const RestEditCharlie({Key? key}) : super(key: key);

  RestEditCtrl get ct => x1RestEditCtrl;
  RestEditData get dt => x1RestEditData.st;

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
