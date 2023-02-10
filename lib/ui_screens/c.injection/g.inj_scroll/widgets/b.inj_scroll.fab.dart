part of '../_index.dart';

class InjScrollFab extends StatelessWidget {
  const InjScrollFab({Key? key}) : super(key: key);

  InjScrollCtrl get ct => Ctrl.injScroll;
  InjScrollData get dt => Data.injScroll.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.arrow_upward_sharp),
      onPressed: () => ct.scrollToTop(),
    );
  }
}
