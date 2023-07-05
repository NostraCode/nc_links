part of '_index.dart';

class NeedLoginView extends StatelessWidget {
  const NeedLoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: NeedLoginAppbar(),
      ),
      floatingActionButton: NeedLoginFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NeedLoginCharlie(),
            NeedLoginDelta(),
            NeedLoginEcho(),
          ],
        ),
      ),
    );
  }
}
