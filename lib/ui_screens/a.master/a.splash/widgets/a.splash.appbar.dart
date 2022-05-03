part of '../_index.dart';

class SplashAppbar extends StatelessWidget {
  const SplashAppbar({Key? key}) : super(key: key);

  SplashCtrl get ct => x1SplashCtrl;
  SplashData get dt => x1SplashData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
    );
  }
}
