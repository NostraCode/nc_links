part of '../_index.dart';

class SnakeGrid extends StatelessWidget {
  const SnakeGrid({Key? key}) : super(key: key);

  SnakeCtrl get ct => x1SnakeCtrl;
  SnakeData get dt => x1SnakeData.st;

  Color? getColor(int? val) {
    switch (val) {
      case 0:
        return Colors.green;
      case 1:
        return Colors.red;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: dt.width * dt.width,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: dt.width,
        childAspectRatio: 1 / 1,
      ),
      itemBuilder: (context, i) {
        final x = (i / dt.width).floor();
        final y = (i % dt.width);

        return OnReactive(
          () => Container(
            margin: const EdgeInsets.all(2),
            color: getColor(dt.listx[x][y].st),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('[$x,$y]', textScaleFactor: 0.6),
                const SizedBoxH(2),
                Text(
                  '${(Random().nextInt(100))}',
                  textScaleFactor: 0.6,
                ),
                const SizedBoxH(2),
                Text('${dt.listx[x][y].st}', textScaleFactor: 0.6),
              ],
            ),
          ),
        );
      },
    );
  }
}
