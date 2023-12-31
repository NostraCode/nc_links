part of '_index.dart';

class FbAuthView extends StatelessWidget {
  const FbAuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: FbAuthAppbar(),
      ),
      // floatingActionButton: const XfbAuthFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FbAuthCharlie(),
            SizedBoxH(50),
            FbAuthDelta(),
            SizedBoxH(50),
            FbAuthEcho(),
          ],
        ),
      ),
    );
  }
}
