part of '_index.dart';

class PopupView extends ReactiveStatelessWidget {
  const PopupView({Key? key}) : super(key: key);

  PopupCtrl get ct => x1PopupCtrl;
  PopupData get dt => x1PopupData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: PopupAppbar(),
      ),
      floatingActionButton: const PopupFab(),
      drawer: const PopupGolf(),
      endDrawer: const PopupGolf(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            children: [
              const SizedBoxH(5),
              Wrap(
                spacing: 8,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text('dialog'),
                    onPressed: () => nav.toDialog(const PopupCharlie()),
                  ),
                  ElevatedButton(
                    child: const Text('cupertino dialog'),
                    onPressed: () => nav.toDialog(const PopupDelta()),
                  ),
                  ElevatedButton(
                    child: const Text('cupertino modal popup'),
                    onPressed: () => nav.toCupertinoModalPopup(
                      const PopupEcho(),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('modal bottom sheet'),
                    onPressed: () => nav.toBottomSheet(
                      const PopupFanta(),
                      enableDrag: false,
                      isDismissible: true,
                      isScrollControlled: true,
                      // barrierColor: Colors.yellow,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              // ----- ----- ----- ----- ----- ----- ----- -----
              const SizedBoxH(20),
              Wrap(
                spacing: 8,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text('drawer'),
                    onPressed: () => nav.scaffold.openDrawer(),
                  ),
                  ElevatedButton(
                    child: const Text('end drawer'),
                    onPressed: () => nav.scaffold.openEndDrawer(),
                  ),
                  ElevatedButton(
                    child: const Text('snackbar'),
                    onPressed: () => nav.scaffold.showSnackBar(
                      SnackBar(
                        content: const Text('text'),
                        action: SnackBarAction(
                          label: 'OK',
                          onPressed: () => nav.scaffold.hideCurrentSnackBar(),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('persistent bottom sheet'),
                    onPressed: () => nav.scaffold.showBottomSheet(const PopupHotel()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
