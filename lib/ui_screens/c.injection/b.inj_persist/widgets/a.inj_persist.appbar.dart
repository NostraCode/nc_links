part of '../_index.dart';

class InjPersistAppbar extends StatelessWidget {
  const InjPersistAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
    );
  }
}
