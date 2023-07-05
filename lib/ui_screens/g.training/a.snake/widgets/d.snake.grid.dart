part of '../_index.dart';

class SnakeGrid extends StatelessWidget {
  const SnakeGrid({Key? key}) : super(key: key);

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
      itemCount: _dt.width * _dt.width,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _dt.width,
        childAspectRatio: 1 / 1,
      ),
      itemBuilder: (context, i) {
        final x = (i / _dt.width).floor();
        final y = (i % _dt.width);

        return OnReactive(
          () => Container(
            margin: const EdgeInsets.all(2),
            color: getColor(_dt.listx[x][y].st),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('[$x,$y]', textScaleFactor: 1),
                const SizedBoxH(2),
                Text('${(Random().nextInt(100))}', textScaleFactor: 1),
                const SizedBoxH(2),
                Text('${_dt.listx[x][y].st}', textScaleFactor: 1),
              ],
            ),
          ),
        );
      },
    );
  }
}
