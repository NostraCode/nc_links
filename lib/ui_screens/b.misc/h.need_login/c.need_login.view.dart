part of '_index.dart';

class NeedLoginView extends StatelessWidget {
  const NeedLoginView({Key? key}) : super(key: key);

  NeedLoginCtrl get ct => x1NeedLoginCtrl;
  NeedLoginData get dt => x1NeedLoginData.st;

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
