part of '../_index.dart';

class SplashAppbar extends StatelessWidget {
  const SplashAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
    );
  }
}
