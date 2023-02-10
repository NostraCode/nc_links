part of '../_index.dart';

class InjPersistAppbar extends StatelessWidget {
  const InjPersistAppbar({Key? key}) : super(key: key);

  InjPersistCtrl get ct => Ctrl.injPersist;
  InjPersistData get dt => Data.injPersist.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
