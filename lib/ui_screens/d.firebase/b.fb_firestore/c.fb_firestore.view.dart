part of '_index.dart';

class FbFirestoreView extends StatelessWidget {
  const FbFirestoreView({Key? key}) : super(key: key);

  FbFirestoreCtrl get ct => x1FbFirestoreCtrl;
  FbFirestoreData get dt => x1FbFirestoreData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: FbFirestoreAppbar(),
      ),
      // floatingActionButton: const XfbFirestoreFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FbFirestoreC(),
            FbFirestoreD(),
            // FbFirestoreE(),
          ],
        ),
      ),
    );
  }
}
