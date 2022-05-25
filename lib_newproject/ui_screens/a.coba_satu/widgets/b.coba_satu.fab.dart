part of '../_index.dart';

class CobaSatuFab extends StatelessWidget {
  const CobaSatuFab({Key? key}) : super(key: key);

  CobaSatuCtrl get ct => x1CobaSatuCtrl;
  CobaSatuData get dt => x1CobaSatuData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
