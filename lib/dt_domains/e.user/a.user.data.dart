part of '_index.dart';

final x1UserData = RM.inject<UserData>(
  () => UserData(),
  debugPrintWhenNotifiedPreMessage: 'UserData',
);

class UserData {
  final token =
      '3fadf85785ef22fc9fda7a03578770d6da459f72b8b5bf7137da7d073bc1e11f';

  final rmPage = 0.inj();

  final rmIsEnd = false.inj();

  final rmUserFuture = RM.injectFuture<Userx?>(() => Future.value(null));

  final rmUserList = RM.inject<List<Userx>>(() => []);

  final rmSelectedId = RM.inject<int>(
    () => 0,
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.data != 0) {
          x1UserServ.readUser();
        }
      },
    ),
  );

  final rmLoadMore = RM.injectFuture<List<Userx>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => x1UserServ.readUsers(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreUsers = snap.state.whereType<Userx>().toList();
          x1UserServ.addToList(moreUsers);
        }
      },
    ),
  );
}
