part of '../_index.dart';

class HomeChat extends StatelessWidget {
  const HomeChat({Key? key}) : super(key: key);

  HomeCtrl get ct => x1HomexCtrl;
  HomeData get dt => x1HomeData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          title: 'Chat List',
          subtitle: '***** ***** ***** ***** *****',
          fun: () => nav.to(Routes.chatList),
        ),
        HomeTile(
          title: 'Chat Detail',
          subtitle: '***** ***** ***** ***** *****',
          fun: () => nav.to(Routes.chatDetail),
        ),
        HomeTile(
          title: 'Chat Login',
          subtitle: '***** ***** ***** ***** *****',
          fun: () => nav.to(Routes.chatLogin),
        ),
      ],
    );
  }
}
