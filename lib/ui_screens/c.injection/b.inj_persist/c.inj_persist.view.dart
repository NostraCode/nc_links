part of '_index.dart';

class InjPersistView extends StatelessWidget {
  const InjPersistView({Key? key}) : super(key: key);

  InjPersistCtrl get ct => x1InjPersistCtrl;
  InjPersistData get dt => x1InjPersistData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjPersistAppbar(),
      ),
      floatingActionButton: const InjPersistFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            InjPersistCharlie(),
            InjPersistDelta(),
            InjPersistEcho(),
          ],
        ),
      ),
    );
  }
}
