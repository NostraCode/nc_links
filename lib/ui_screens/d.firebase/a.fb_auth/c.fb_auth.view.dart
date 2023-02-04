part of '_index.dart';

class FbAuthView extends StatelessWidget {
  const FbAuthView({Key? key}) : super(key: key);

  FbAuthCtrl get ct => Ctrl.fbAuth;
  FbAuthData get dt => Data.fbAuth.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: FbAuthAppbar(),
      ),
      // floatingActionButton: const XfbAuthFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FbAuthC(),
            SizedBoxH(10),
            FbAuthD(),
            SizedBoxH(10),
            FbAuthE(),
          ],
        ),
      ),
    );
  }
}
