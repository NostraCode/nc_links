part of '_index.dart';

class FbAuthView extends StatelessWidget {
  const FbAuthView({Key? key}) : super(key: key);

  FbAuthCtrl get ct => Ctrl.fbAuth;
  FbAuthData get dt => Data.fbAuth.st;

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
            FbAuthC(),
            SizedBoxH(50),
            FbAuthD(),
            SizedBoxH(50),
            FbAuthE(),
            SizedBoxH(50),
            FbAuthF(),
          ],
        ),
      ),
    );
  }
}
