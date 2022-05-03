part of '_index.dart';

class RestEditView extends StatelessWidget {
  const RestEditView({Key? key}) : super(key: key);

  RestEditCtrl get ct => x1RestEditCtrl;
  RestEditData get dt => x1RestEditData.st;

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
            listenTo: dt.rmForm,
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
                    if (dt.rmForm.isDirty)
                      const Center(
                        child:
                            Text('The form is changed but not submitted yet!'),
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
