part of '_index.dart';

class OnlyAdminView extends StatelessWidget {
  const OnlyAdminView({Key? key}) : super(key: key);

  OnlyAdminCtrl get ct => Ctrl.onlyAdmin;
  OnlyAdminData get dt => Data.onlyAdmin.st;

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
