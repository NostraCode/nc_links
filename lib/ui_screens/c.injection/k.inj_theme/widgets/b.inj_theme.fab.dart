part of '../_index.dart';

class InjThemeFab extends StatelessWidget {
  const InjThemeFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _ct.action(),
    );
  }
}
