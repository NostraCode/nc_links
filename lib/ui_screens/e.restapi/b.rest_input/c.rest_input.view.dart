part of '_index.dart';

class RestInputView extends StatelessWidget {
  const RestInputView({Key? key}) : super(key: key);

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
            listenTo: _dt.rxForm,
            builder: () {
              return FocusScope(
                node: _dt.focusScopeNode,
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
                    if (_dt.rxForm.isDirty)
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
