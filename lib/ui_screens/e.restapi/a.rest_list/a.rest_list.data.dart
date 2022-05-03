part of '_index.dart';

final x1RestListData = RM.inject<RestListData>(
  () => RestListData(),
  debugPrintWhenNotifiedPreMessage: 'RestListData',
  sideEffects: SideEffects(initState: () => x1RestListCtrl.init()),
);

class RestListData {
  final title = 'RestList';

  final rmIsEnd = x1XuserData.st.rmIsEnd;

  final rmSelectedId = x1XuserData.st.rmSelectedId;

  final rmUserList = x1XuserData.st.rmUserList;

  final rmLoadMore = x1XuserData.st.rmLoadMore;
}
