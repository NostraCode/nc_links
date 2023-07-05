part of '_index.dart';

class InjPersistView extends StatelessWidget {
  const InjPersistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjPersistAppbar(),
      ),
      floatingActionButton: InjPersistFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InjPersistCharlie(),
            InjPersistDelta(),
            InjPersistEcho(),
          ],
        ),
      ),
    );
  }
}
