part of '../_index.dart';

class RestEditFab extends StatelessWidget {
  const RestEditFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () => _ct.submit(),
    );
  }
}
