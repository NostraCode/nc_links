part of '_index.dart';

final x1UserData = RM.inject<UserData>(
  () => UserData(),
  debugPrintWhenNotifiedPreMessage: '',
);

class UserData {
  final rxPage = 0.inj();

  final rxIsEnd = false.inj();

  final rxUserList = RM.inject<List<User>>(() => []);

  final rxSelectedId = 0.inj();

  final rxUserDetail = RM.injectFuture<User?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => x1UserServ.initUserDetail(),
    ),
  );

  final rxUsersLoader = RM.injectFuture<List<User>?>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => x1UserServ.initUsersLoader(),
      onSetState: (snap) {
        snap.onAll(
          onIdle: () => logx.s('from snap rxUsersLoader: onIdle...'),
          onWaiting: () => logx.s('from snap rxUsersLoader: onWaiting...'),
          onError: (_, __) => logx.s('from snap rxUsersLoader: onError...'),
          onData: (data) {
            logx.s('from snap rxLoadMore: onData...');
            final moreUsers = data;
            if (moreUsers != null) {
              x1UserServ.addToList(moreUsers);
            }
          },
        );
      },
    ),
  );
}
