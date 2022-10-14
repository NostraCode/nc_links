part of '../_index.dart';

class SnakeAppbar extends StatelessWidget {
  const SnakeAppbar({Key? key}) : super(key: key);

  SnakeCtrl get ct => x1SnakeCtrl;
  SnakeData get dt => x1SnakeData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
