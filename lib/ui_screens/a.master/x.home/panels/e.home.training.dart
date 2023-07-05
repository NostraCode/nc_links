part of '../_index.dart';

class HomeTraining extends StatelessWidget {
  const HomeTraining({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTile(
          title: 'Snake Game',
          subtitle: 'pretty code on snake game',
          fun: () => nav.to(Routes.snake),
        ),
      ],
    );
  }
}
