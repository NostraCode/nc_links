part of '_index.dart';

class ForgetView extends StatelessWidget {
  const ForgetView({Key? key}) : super(key: key);

  ForgetCtrl get ct => Ctrl.forget;
  ForgetData get dt => Data.forget.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(56),
      //   child: ForgetAppbar(),
      // ),
      // floatingActionButton: ForgetFab(),
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
                        listenTo: dt.rxForm,
                        builder: () {
                          return const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBoxH(20),
                              ForgetEmail(),
                              SizedBoxH(30),
                              ForgetBtnSubmit(),
                              // SizedBoxH(30),
                              // RegisPwdB(),
                              // SizedBoxH(30),
                              // RegisBtnSubmit(),
                              SizedBoxH(35),
                              Divider(height: 1),
                              SizedBoxH(20),
                              ForgetBtnToLogin(),
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
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ForgetEmail(),
      //       ForgetBtnSubmit(),
      //       ForgetBtnToLogin(),
      //     ],
      //   ),
      // ),
    );
  }
}
