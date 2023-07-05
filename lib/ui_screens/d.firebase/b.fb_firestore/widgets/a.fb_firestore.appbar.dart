part of '../_index.dart';

class FbFirestoreAppbar extends StatelessWidget {
  const FbFirestoreAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
