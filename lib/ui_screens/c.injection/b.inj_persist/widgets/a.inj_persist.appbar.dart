part of '../_index.dart';

class InjPersistAppbar extends StatelessWidget {
  const InjPersistAppbar({Key? key}) : super(key: key);

  InjPersistCtrl get ct => x1InjPersistCtrl;
  InjPersistData get dt => x1InjPersistData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
