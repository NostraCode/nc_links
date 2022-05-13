part of '_index.dart';

final x1RestListData = RM.inject<RestListData>(
  () => RestListData(),
  debugPrintWhenNotifiedPreMessage: 'RestListData',
  sideEffects: SideEffects(initState: () => x1RestListCtrl.init()),
);

class RestListData {
  final title = 'RestList';

  final rmIsEnd = x1UserData.st.rmIsEnd;

  final rmSelectedId = x1UserData.st.rmSelectedId;

  final rmUserList = x1UserData.st.rmUserList;

  final rmLoadMore = x1UserData.st.rmLoadMore;
}
