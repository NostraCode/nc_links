part of '../_index.dart';

class FbFirestoreFab extends StatelessWidget {
  const FbFirestoreFab({Key? key}) : super(key: key);

  FbFirestoreCtrl get ct => Ctrl.fbFirestore;
  FbFirestoreData get dt => Data.fbFirestore.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
