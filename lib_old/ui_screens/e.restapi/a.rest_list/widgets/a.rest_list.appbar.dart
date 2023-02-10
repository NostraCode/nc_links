part of '../_index.dart';

class RestListAppbar extends StatelessWidget {
  const RestListAppbar({Key? key}) : super(key: key);

  RestListCtrl get ct => Ctrl.restList;
  RestListData get dt => Data.restList.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
