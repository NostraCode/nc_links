part of '_index.dart';

final x1UserxData = RM.inject<UserxData>(
  () => UserxData(),
  debugPrintWhenNotifiedPreMessage: '',
);

class UserxData {
  final rxPage = 0.inj();

  final rxIsEnd = false.inj();

  final rxUserList = RM.inject<List<Userx>>(() => []);

  final rxSelectedId = 0.inj();

  final rxUserDetail = RM.injectFuture<Userx?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => x1UserxServ.initUserDetail(),
    ),
  );

  final rxUsersLoader = RM.injectFuture<List<Userx>?>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => x1UserxServ.initUsersLoader(),
      onSetState: (snap) {
        snap.onAll(
          onIdle: () => logx.s('from snap rxUsersLoader: onIdle...'),
          onWaiting: () => logx.s('from snap rxUsersLoader: onWaiting...'),
          onError: (_, __) => logx.s('from snap rxUsersLoader: onError...'),
          onData: (data) {
            logx.s('from snap rxLoadMore: onData...');
            final moreUsers = data;
            if (moreUsers != null) {
              x1UserxServ.addToList(moreUsers);
            }
          },
        );
      },
    ),
  );
}
