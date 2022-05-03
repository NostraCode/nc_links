part of '../_index.dart';

class <FTName | pascalcase>Appbar extends StatelessWidget {
  const <FTName | pascalcase>Appbar({Key? key}) : super(key: key);

  <FTName | pascalcase>Ctrl get ct => x1<FTName | pascalcase>Ctrl;
  <FTName | pascalcase>Data get dt => x1<FTName | pascalcase>Data.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rmTitle.st)),
    );
  }
}
