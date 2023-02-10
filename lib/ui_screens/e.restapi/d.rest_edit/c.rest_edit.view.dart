part of '_index.dart';

class RestEditView extends StatelessWidget {
  const RestEditView({Key? key}) : super(key: key);

  RestEditCtrl get ct => Ctrl.restEdit;
  RestEditData get dt => Data.restEdit.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: RestEditAppbar(),
      ),
      // floatingActionButton: const RestEditFab(),
      body: KeyboardDismisser(
        gestures: const [
          GestureType.onTap,
          GestureType.onPanUpdateDownDirection,
        ],
        child: Center(
          child: OnFormBuilder(
            listenTo: dt.rxForm,
            builder: () {
              return FocusScope(
                node: dt.focusScopeNode,
                child: ListView(
                  padding: const EdgeInsets.all(12),
                  children: [
                    const SizedBoxH(5),
                    const RestEditCharlie(),
                    const SizedBoxH(20),
                    const RestEditDelta(),
                    const SizedBoxH(20),
                    const RestEditEcho(),
                    const SizedBoxH(10),
                    if (dt.rxForm.isDirty)
                      const Center(
                        child: Text('The form is changed but not submitted yet!'),
                      )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
