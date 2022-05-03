part of '../_index.dart';

class RestListAppbar extends StatelessWidget {
  const RestListAppbar({Key? key}) : super(key: key);

  RestListCtrl get ct => x1RestListCtrl;
  RestListData get dt => x1RestListData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
