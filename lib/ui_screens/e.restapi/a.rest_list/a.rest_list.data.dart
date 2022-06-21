part of '_index.dart';

final x1RestListData = RM.inject<RestListData>(
  () => RestListData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1RestListCtrl.init()),
);

class RestListData {
  final title = 'RestList';

  final rxIsEnd = x1UserData.st.rxIsEnd;

  final rxSelectedId = x1UserData.st.rxSelectedId;

  final rxUserList = x1UserData.st.rxUserList;

  final rxUserLoader = x1UserData.st.rxUsersLoader;
}
