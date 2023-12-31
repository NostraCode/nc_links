part of '_index.dart';

class RegisView extends StatelessWidget {
  const RegisView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(
      //   preferredSize: Size.fromHeight(56),
      //   child: RegisxAppbar(),
      // ),
      // floatingActionButton: const RegisxFab(),
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
                    child: OnFormBuilder(
                        listenTo: _dt.rxForm,
                        builder: () {
                          return const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBoxH(20),
                              RegisEmail(),
                              SizedBoxH(30),
                              RegisPwdA(),
                              SizedBoxH(30),
                              RegisPwdB(),
                              SizedBoxH(30),
                              RegisBtnSubmit(),
                              SizedBoxH(35),
                              Divider(height: 1),
                              SizedBoxH(20),
                              RegisBtnToLogin(),
                            ],
                          );
                        }),
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
