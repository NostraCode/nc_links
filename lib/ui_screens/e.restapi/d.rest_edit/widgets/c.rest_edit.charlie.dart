part of '../_index.dart';

class RestEditCharlie extends StatelessWidget {
  const RestEditCharlie({Key? key}) : super(key: key);

  RestEditCtrl get ct => Ctrl.restEdit;
  RestEditData get dt => Data.restEdit.st;

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
