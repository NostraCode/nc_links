part of '../_index.dart';

class RestEditCharlie extends StatelessWidget {
  const RestEditCharlie({Key? key}) : super(key: key);

  RestEditCtrl get ct => Ctrl.restEdit;
  RestEditData get dt => Data.restEdit.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () {
        return Column(
          children: [
            TextField(
              controller: dt.rxName.st.controller,
              focusNode: dt.rxName.st.focusNode,
              onEditingComplete: () => dt.focusScopeNode.nextFocus(),
              decoration: InputDecoration(
                hintText: "Name",
                labelText: 'Name',
                errorText: dt.rxName.st.error,
              ),
            ),
            const SizedBoxH(20),
            TextField(
              controller: dt.rxEmail.st.controller,
              focusNode: dt.rxEmail.st.focusNode,
              onEditingComplete: () => dt.focusScopeNode.unfocus(),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "your@email.com",
                labelText: "Email Address",
                errorText: dt.rxEmail.st.error,
              ),
            ),
          ],
        );
      },
    );
  }
}
