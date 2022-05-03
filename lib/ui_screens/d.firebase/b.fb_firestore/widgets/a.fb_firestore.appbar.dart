part of '../_index.dart';

class FbFirestoreAppbar extends StatelessWidget {
  const FbFirestoreAppbar({Key? key}) : super(key: key);

  FbFirestoreCtrl get ct => x1FbFirestoreCtrl;
  FbFirestoreData get dt => x1FbFirestoreData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
