part of '../_index.dart';

class HomeChat extends StatelessWidget {
  const HomeChat({Key? key}) : super(key: key);

  HomeCtrl get ct => Ctrl.home;
  HomeData get dt => Data.home.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          title: 'Chat Login',
          subtitle: 'confirm auth',
          fun: () => nav.to(Routes.chatLogin),
        ),
        HomeTile(
          title: 'Chat Users',
          subtitle: 'only for admin',
          fun: () => nav.to(Routes.chatUser),
        ),
        HomeTile(
          title: 'Chat Contacts',
          subtitle: 'users that ready tobe invited by you',
          fun: () => nav.to(Routes.chatFriend),
        ),
        HomeTile(
          title: 'Chat Rooms',
          subtitle: 'list of personal or group chats',
          fun: () => nav.to(Routes.chatRoom),
        ),
        HomeTile(
          title: 'Chat Messages',
          subtitle: 'list of messages of active room',
          fun: () => nav.to(Routes.chatMessage),
        ),
      ],
    );
  }
}
