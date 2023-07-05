part of '../_index.dart';

class InjPessimisticFab extends StatelessWidget {
  const InjPessimisticFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.loop),
      onPressed: () => _ct.action(),
    );
  }
}
