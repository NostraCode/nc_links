part of '../_index.dart';

class FbFirestoreAppbar extends StatelessWidget {
  const FbFirestoreAppbar({Key? key}) : super(key: key);

  FbFirestoreCtrl get ct => Ctrl.fbFirestore;
  FbFirestoreData get dt => Data.fbFirestore.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
