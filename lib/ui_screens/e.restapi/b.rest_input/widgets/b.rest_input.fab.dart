part of '../_index.dart';

class RestInputFab extends StatelessWidget {
  const RestInputFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.upload),
      onPressed: () => _ct.submit(),
    );
  }
}
