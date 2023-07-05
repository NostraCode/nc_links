part of '../_index.dart';

class HomeRestapi extends StatelessWidget {
  const HomeRestapi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          title: 'Rest List',
          subtitle: 'rest api list',
          fun: () => nav.to(Routes.restList),
        ),
        HomeTile(
          title: 'Dio Log',
          subtitle: 'show dio log (http inspector)',
          fun: () => _ct.showDioLog(context),
        ),
      ],
    );
  }
}
