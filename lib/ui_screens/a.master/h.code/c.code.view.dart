part of '_index.dart';

class CodeView extends StatelessWidget {
  const CodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(
      //   preferredSize: Size.fromHeight(56),
      //   child: CodeAppbar(),
      // ),
      // floatingActionButton: const CodeFab(),
      body: KeyboardDismisser(
        gestures: const [
          GestureType.onTap,
          GestureType.onPanUpdateDownDirection,
        ],
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Column(
                      children: [
                        OnFormBuilder(
                          listenTo: _dt.rxFormCode,
                          builder: () {
                            return const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBoxH(20),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text('[debug] 111222'),
                                ),
                                SizedBoxH(20),
                                CodeInput(),
                                SizedBoxH(20),
                                CodeSubmit(),
                                SizedBoxH(30),
                                Divider(height: 1),
                              ],
                            );
                          },
                        ),
                        const SizedBoxH(20),
                        const CodeNav(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
