part of '../_index.dart';

class RestEditFab extends StatelessWidget {
  const RestEditFab({Key? key}) : super(key: key);

  RestEditCtrl get ct => x1RestEditCtrl;
  RestEditData get dt => x1RestEditData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () => ct.submit(),
    );
  }
}
