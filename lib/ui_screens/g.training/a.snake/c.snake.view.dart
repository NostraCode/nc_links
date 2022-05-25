part of '_index.dart';

class SnakeView extends StatelessWidget {
  const SnakeView({Key? key}) : super(key: key);

  SnakeCtrl get ct => x1SnakeCtrl;
  SnakeData get dt => x1SnakeData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: SnakeAppbar(),
      ),
      // floatingActionButton: const SnakeFab(),
      body: Column(
        children: const [
          SizedBox(height: 100, child: SnakeButtons()),
          Flexible(child: SnakeGrid()),
        ],
      ),
    );
  }
}
