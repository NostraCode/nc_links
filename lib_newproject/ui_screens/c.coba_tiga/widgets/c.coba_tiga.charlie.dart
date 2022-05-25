part of '../_index.dart';

class CobaTigaCharlie extends StatelessWidget {
  const CobaTigaCharlie({Key? key}) : super(key: key);

  CobaTigaCtrl get ct => x1CobaTigaCtrl;
  CobaTigaData get dt => x1CobaTigaData.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rmInt.st}')),
      ],
    );
  }
}
