part of '../_index.dart';

class <FTName | pascalcase>Charlie extends StatelessWidget {
  const <FTName | pascalcase>Charlie({Key? key}) : super(key: key);

  <FTName | pascalcase>Ctrl get ct => x1<FTName | pascalcase>Ctrl;
  <FTName | pascalcase>Data get dt => x1<FTName | pascalcase>Data.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
