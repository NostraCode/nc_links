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
          title: 'Test logx',
          subtitle: 'tap then check console.',
          fun: () => ct.taptestLogx(),
        ),
        HomeTile(
          title: 'Popup',
          subtitle: 'snackbar, dialog, bottomsheet, toast, overlay, etc',
          fun: () => nav.to(Routes.popup),
        ),
        HomeTile(
          title: 'Not Found',
          subtitle: 'redirect to "not found page"',
          fun: () => nav.to(Routes.blablabla),
        ),
        // HomeTile(
        //   title: 'Need Login',
        //   subtitle: 'can be accessed only if auth no null',
        //   fun: () => nav.push(Routes.needLogin),
        // ),
        // HomeTile(
        //   title: 'Only Admin',
        //   subtitle: 'can be accessed by admin only',
        //   fun: () => nav.push(Routes.adminOnly),
        // ),
      ],
    );
  }
}
