part of '../_index.dart';

class HomeMisc extends StatelessWidget {
  const HomeMisc({Key? key}) : super(key: key);

  HomeCtrl get ct => x1HomexCtrl;
  HomeData get dt => x1HomeData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          title: 'Test Logger',
          subtitle: 'tap then check console.',
          fun: () => ct.taptestLogger(),
        ),
        HomeTile(
          title: 'Popup',
          subtitle: 'snackbar, dialog, bottomsheet, toast, overlay, etc',
          fun: () => nav.to(Routes.popup),
        ),
        HomeTile(
          title: 'Need Login',
          subtitle: 'can be accessed only if auth no null',
          fun: () => nav.to(Routes.needLogin),
        ),
        HomeTile(
          title: 'Only Admin',
          subtitle: 'can be accessed by admin only',
          fun: () => nav.to(Routes.adminOnly),
        ),
      ],
    );
  }
}
