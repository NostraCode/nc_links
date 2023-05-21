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
                        listenTo: dt.rxForm,
                        builder: () {
                          return const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBoxH(20),
                              LoginEmail(),
                              SizedBoxH(30),
                              LoginPwd(),
                              SizedBoxH(30),
                              LoginBtnSubmit(),
                              SizedBoxH(20),
                              LoginBtnToForget(),
                              SizedBoxH(20),
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
      ),
    );
  }
}
