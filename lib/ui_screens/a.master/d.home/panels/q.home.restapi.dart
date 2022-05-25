part of '../_index.dart';

class HomeRestapi extends StatelessWidget {
  const HomeRestapi({Key? key}) : super(key: key);

  HomeCtrl get ct => x1HomexCtrl;
  HomeData get dt => x1HomeData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          title: 'Alice',
          subtitle: 'show alice inspector',
          fun: () => ct.tapAlice(),
        ),
        HomeTile(
          title: 'Rest List',
          subtitle: 'rest api list',
          fun: () => nav.to(Routes.restList),
        ),
      ],
    );
  }
}
