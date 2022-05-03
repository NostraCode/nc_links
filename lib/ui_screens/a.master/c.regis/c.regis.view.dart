part of '_index.dart';

class RegisView extends StatelessWidget {
  const RegisView({Key? key}) : super(key: key);

  RegisCtrl get ct => x1RegisCtrl;
  RegisData get dt => x1RegisData.st;

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
                        listenTo: dt.rmForm,
                        builder: () {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
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
      // body: KeyboardDismisser(
      //   child: Form(
      //     key: dt.formKey,
      //     child: FocusScope(
      //       node: dt.focusScopeNode,
      //       child: Center(
      //         child: SingleChildScrollView(
      //           padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Flexible(
      //                 child: Container(
      //                   constraints: const BoxConstraints(
      //                     maxWidth: 300,
      //                   ),
      //                   child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: const [
      //                       RegisFormEmail(),
      //                       RegisFormPwdA(),
      //                       RegisFormPwdB(),
      //                       SizedBoxH(20),
      //                       RegisBtnSubmit(),
      //                       SizedBoxH(35),
      //                       Divider(height: 1),
      //                       SizedBoxH(20),
      //                       RegisBtnToLogin(),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
