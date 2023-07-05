part of '../_index.dart';

class InjScrollFab extends StatelessWidget {
  const InjScrollFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.arrow_upward_sharp),
      onPressed: () => _ct.scrollToTop(),
    );
  }
}
