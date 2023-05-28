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
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBoxH(20),
                              const LoginEmail(),
                              const SizedBoxH(30),
                              const LoginPwd(),
                              const SizedBoxH(30),
                              const LoginBtnSubmit(),
                              const SizedBoxH(20),
                              LoginBtnText(
                                label: 'forget password',
                                function: () => nav.toReplacement(Routes.forget),
                              ),
                              const SizedBoxH(20),
                              const Divider(height: 1),
                              const SizedBoxH(20),
                              LoginBtnText(
                                label: 'phone login',
                                function: () => nav.toReplacement(Routes.otp),
                              ),
                              const SizedBoxH(20),
                              const Divider(height: 1),
                              const SizedBoxH(35),
                              const LoginBtnGoogle(),
                              const SizedBoxH(20),
                              LoginBtnText(
                                label: 'don\'t have any account?',
                                function: () => nav.toReplacement(Routes.regis),
                              ),
                              LoginBtnText(
                                label: 'appcheck',
                                function: () => nav.to(Routes.appCheck),
                              ),
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
