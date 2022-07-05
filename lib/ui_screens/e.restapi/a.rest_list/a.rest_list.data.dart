part of '_index.dart';

final x1RestListData = RM.inject<RestListData>(
  () => RestListData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1RestListCtrl.init()),
);

class RestListData {
  final title = 'RestList';

  final rxIsEnd = x1UserxData.st.rxIsEnd;

  final rxSelectedId = x1UserxData.st.rxSelectedId;

  final rxUserList = x1UserxData.st.rxUserList;

  final rxUserLoader = x1UserxData.st.rxUsersLoader;
}
