part of '_index.dart';

class SnakeView extends StatelessWidget {
  const SnakeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: SnakeAppbar(),
      ),
      // floatingActionButton: const SnakeFab(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: SnakeButtons(),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: SnakeGrid(),
            ),
          ),
          // Container(
          //   constraints: const BoxConstraints(
          //     maxWidth: 600,
          //     maxHeight: 600,
          //   ),
          //   child: const Flexible(child: SnakeGrid()),
          // ),
        ],
      ),
    );
  }
}
