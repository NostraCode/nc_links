part of '../_index.dart';

class CobaTigaFab extends StatelessWidget {
  const CobaTigaFab({Key? key}) : super(key: key);

  CobaTigaCtrl get ct => x1CobaTigaCtrl;
  CobaTigaData get dt => x1CobaTigaData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
