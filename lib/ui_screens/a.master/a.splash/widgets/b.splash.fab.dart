part of '../_index.dart';

class SplashFab extends StatelessWidget {
  const SplashFab({Key? key}) : super(key: key);

  SplashCtrl get ct => x1SplashCtrl;
  SplashData get dt => x1SplashData.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
