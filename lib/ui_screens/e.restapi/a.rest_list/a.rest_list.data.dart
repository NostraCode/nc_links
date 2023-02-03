part of '_index.dart';

final x1RestListData = RM.inject<RestListData>(
  () => RestListData(),
  debugPrintWhenNotifiedPreMessage: '',
  sideEffects: SideEffects(initState: () => x1RestListCtrl.init()),
);

class RestListData {
  final title = 'RestList';

  final rxIsEnd = x1UserxProv.st.rxIsEnd;

  final rxSelectedId = x1UserxProv.st.rxSelectedId;

  final rxUserList = x1UserxProv.st.rxUserList;

  final rxUserLoader = x1UserxProv.st.rxUsersLoader;
}
