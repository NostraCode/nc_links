part of '../_index.dart';

class InjPersistEcho extends StatelessWidget {
  const InjPersistEcho({Key? key}) : super(key: key);

  InjPersistCtrl get ct => Ctrl.injPersist;
  InjPersistData get dt => Data.injPersist.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
