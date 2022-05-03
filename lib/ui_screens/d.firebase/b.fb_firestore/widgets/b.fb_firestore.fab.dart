part of '../_index.dart';

class FbFirestoreFab extends StatelessWidget {
  const FbFirestoreFab({Key? key}) : super(key: key);

  FbFirestoreCtrl get ct => x1FbFirestoreCtrl;
  FbFirestoreData get dt => x1FbFirestoreData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
