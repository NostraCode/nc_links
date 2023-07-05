part of '../_index.dart';

class RestInputCharlie extends StatelessWidget {
  const RestInputCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: _dt.rxForm,
      builder: () {
        return Column(
          children: [
            TextField(
              controller: _dt.rxName.controller,
              focusNode: _dt.rxName.focusNode,
              onEditingComplete: () => _dt.focusScopeNode.nextFocus(),
              decoration: InputDecoration(
                hintText: "Name",
                labelText: 'Name',
                errorText: _dt.rxName.error,
              ),
            ),
            const SizedBoxH(20),
            TextField(
              controller: _dt.rxEmail.controller,
              focusNode: _dt.rxEmail.focusNode,
              onEditingComplete: () => _dt.focusScopeNode.unfocus(),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "your@email.com",
                labelText: "Email Address",
                errorText: _dt.rxEmail.error,
              ),
            ),
          ],
        );
      },
    );
  }
}
