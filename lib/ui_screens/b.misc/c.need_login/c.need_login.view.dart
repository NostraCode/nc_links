part of '_index.dart';

class NeedLoginView extends StatelessWidget {
  const NeedLoginView({Key? key}) : super(key: key);

  NeedLoginCtrl get ct => Ctrl.needLogin;
  NeedLoginData get dt => Data.needLogin.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: NeedLoginAppbar(),
      ),
      floatingActionButton: const NeedLoginFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            NeedLoginCharlie(),
            NeedLoginDelta(),
            NeedLoginEcho(),
          ],
        ),
      ),
    );
  }
}
