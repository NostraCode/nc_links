part of '_index.dart';

final x1UserData = RM.inject<UserData>(
  () => UserData(),
  debugPrintWhenNotifiedPreMessage: '',
);

class UserData {
  final token =
      // '3fadf85785ef22fc9fda7a03578770d6da459f72b8b5bf7137da7d073bc1e11f';
      '3fadf85785ef22fc9fda7a03578770d6da459f72b8b5bf7137da7d073bc1e11fccc';

  final rxPage = 0.inj();

  final rxIsEnd = false.inj();

  final rxUserFuture = RM.injectFuture<User?>(() => Future.value(null));

  final rxUserList = RM.inject<List<User>>(() => []);

  final rxSelectedId = RM.inject<int>(
    () => 0,
    sideEffects: SideEffects(
      onSetState: (snap) {
        if (snap.data != 0) {
          x1UserServ.readUser();
        }
      },
    ),
  );

  final rxLoadMore = RM.injectFuture<List<User>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => x1UserServ.readUsers(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreUsers = snap.state.whereType<User>().toList();
          x1UserServ.addToList(moreUsers);
        }
      },
    ),
  );
}
