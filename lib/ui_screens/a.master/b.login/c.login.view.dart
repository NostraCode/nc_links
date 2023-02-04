part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  LoginCtrl get ct => Ctrl.login;
  LoginData get dt => Data.login.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const PreferredSize(
      //   preferredSize: Size.fromHeight(56),
      //   child: LoginxAppbar(),
      // ),
      // floatingActionButton: const LoginxFab(),
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
                        listenTo: dt.rxForx,
                        builder: () {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              SizedBoxH(20),
                              LoginEmail(),
                              SizedBoxH(30),
                              LoginPwd(),
                              SizedBoxH(30),
                              LoginBtnSubmit(),
                              SizedBoxH(35),
                              Divider(height: 1),
                              SizedBoxH(35),
                              LoginBtnGoogle(),
                              SizedBoxH(20),
                              LoginBtnToRegis(),
                            ],
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
        // child: Forx(
        //   key: dt.forxKey,
        //   child: FocusScope(
        //     node: dt.focusScopeNode,
        //     child: Center(
        //       child: SingleChildScrollView(
        //         padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Flexible(
        //               child: Container(
        //                 constraints: const BoxConstraints(
        //                   maxWidth: 300,
        //                 ),
        //                 child: Column(
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   crossAxisAlignment: CrossAxisAlignment.center,
        //                   children: const [
        //                     LoginForxEmail(),
        //                     LoginForxPwd(),
        //                     SizedBoxH(20),
        //                     LoginBtnSubmit(),
        //                     SizedBoxH(35),
        //                     Divider(height: 1),
        //                     SizedBoxH(35),
        //                     LoginBtnGoogle(),
        //                     SizedBoxH(35),
        //                     LoginBtnToRegis(),
        //                   ],
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
