part of '_index.dart';

class RestInputView extends StatelessWidget {
  const RestInputView({Key? key}) : super(key: key);

  RestInputCtrl get ct => x1RestInputCtrl;
  RestInputData get dt => x1RestInputData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: RestInputAppbar(),
      ),
      // floatingActionButton: const RestInputFab(),
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
                    const RestInputCharlie(),
                    const SizedBoxH(20),
                    const RestInputDelta(),
                    const SizedBoxH(20),
                    const RestInputEcho(),
                    const SizedBoxH(10),
                    if (dt.rxForm.isDirty)
                      const Center(
                        child:
                            Text('The forx is changed but not submitted yet!'),
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
