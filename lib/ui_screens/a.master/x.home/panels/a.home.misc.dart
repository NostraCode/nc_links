part of '../_index.dart';

class HomeMisc extends StatelessWidget {
  const HomeMisc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          title: 'Test logx',
          subtitle: 'tap then check console.',
          fun: () => _ct.taptestLogx(),
        ),
        HomeTile(
          title: 'Popup',
          subtitle: 'snackbar, dialog, bottomsheet, toast, overlay, etc',
          fun: () => nav.to(Routes.popup),
        ),
        HomeTile(
          title: 'Overlay Widgets',
          subtitle: 'toast & notification from overlay package',
          fun: () => nav.to(Routes.overlayWidgets),
        ),
        HomeTile(
          title: 'Not Found',
          subtitle: 'random route redirect to "not found" page',
          fun: () {
            final randomStr = generateWordPairs(maxSyllables: 2).first.join('_');
            nav.to(randomStr.toLowerCase());
          },
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
