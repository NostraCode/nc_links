part of '_index.dart';

class OnlyAdminView extends StatelessWidget {
  const OnlyAdminView({Key? key}) : super(key: key);

  OnlyAdminCtrl get ct => x1OnlyAdminCtrl;
  OnlyAdminData get dt => x1OnlyAdminData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: OnlyAdminAppbar(),
      ),
      floatingActionButton: const OnlyAdminFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            OnlyAdminCharlie(),
            OnlyAdminDelta(),
            OnlyAdminEcho(),
          ],
        ),
      ),
    );
  }
}
