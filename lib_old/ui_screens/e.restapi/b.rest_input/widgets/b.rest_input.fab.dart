part of '../_index.dart';

class RestInputFab extends StatelessWidget {
  const RestInputFab({Key? key}) : super(key: key);

  RestInputCtrl get ct => Ctrl.restInput;
  RestInputData get dt => Data.restInput.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.upload),
      onPressed: () => ct.submit(),
    );
  }
}
