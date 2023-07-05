part of '../_index.dart';

class RestEditCharlie extends StatelessWidget {
  const RestEditCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return Column(
          children: [
            TextField(
              controller: _dt.rxName.st.controller,
              focusNode: _dt.rxName.st.focusNode,
              onEditingComplete: () => _dt.focusScopeNode.nextFocus(),
              decoration: InputDecoration(
                hintText: "Name",
                labelText: 'Name',
                errorText: _dt.rxName.st.error,
              ),
            ),
            const SizedBoxH(20),
            TextField(
              controller: _dt.rxEmail.st.controller,
              focusNode: _dt.rxEmail.st.focusNode,
              onEditingComplete: () => _dt.focusScopeNode.unfocus(),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "your@email.com",
                labelText: "Email Address",
                errorText: _dt.rxEmail.st.error,
              ),
            ),
          ],
        );
      },
    );
  }
}
