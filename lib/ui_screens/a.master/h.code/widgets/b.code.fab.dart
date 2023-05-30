part of '../_index.dart';

class CodeFab extends StatelessWidget {
  const CodeFab({Key? key}) : super(key: key);

  CodeCtrl get ct => Ctrl.code;
  CodeData get dt => Data.code.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
