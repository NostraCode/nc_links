part of '_index.dart';

class OnlyAdminView extends StatelessWidget {
  const OnlyAdminView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: OnlyAdminAppbar(),
      ),
      floatingActionButton: OnlyAdminFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnlyAdminCharlie(),
            OnlyAdminDelta(),
            OnlyAdminEcho(),
          ],
        ),
      ),
    );
  }
}
