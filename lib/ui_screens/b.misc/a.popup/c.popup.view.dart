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
      drawer: Container(width: 300, color: Colors.grey),
      endDrawer: Container(width: 300, color: Colors.grey),
      floatingActionButton: const PopupFab(),
      bottomSheet: dt.rxShow.st
          ? Container(
              color: Colors.grey,
              height: 100,
              child: Center(
                child: ElevatedButton(
                  child: const Text('hide'),
                  onPressed: () => ct.hidePersistentBottomSheet(),
                ),
              ),
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            children: [
              const SizedBoxH(5),
              const Text('...via RM.navigate...'),
              const SizedBoxH(5),
              Wrap(
                spacing: 8,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text('dialog'),
                    onPressed: () => RM.navigate.toDialog(const PopupCharlie()),
                  ),
                  ElevatedButton(
                    child: const Text('cupertino dialog'),
                    onPressed: () => RM.navigate.toDialog(const PopupDelta()),
                  ),
                  ElevatedButton(
                    child: const Text('cupertino modal popup'),
                    onPressed: () => RM.navigate.toCupertinoModalPopup(
                      const PopupEcho(),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('modal bottom sheet'),
                    onPressed: () => RM.navigate.toBottomSheet(
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
              const Text('...via RM.scaffold...'),
              const SizedBoxH(5),
              Wrap(
                spacing: 8,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text('drawer'),
                    onPressed: () => RM.scaffold.openDrawer(),
                  ),
                  ElevatedButton(
                    child: const Text('end drawer'),
                    onPressed: () => RM.scaffold.openEndDrawer(),
                  ),
                  ElevatedButton(
                    child: const Text('snackbar'),
                    onPressed: () => RM.scaffold.showSnackBar(
                      SnackBar(
                        content: const Text('text'),
                        action: SnackBarAction(
                          label: 'OK',
                          onPressed: () => RM.scaffold.hideCurrentSnackBar(),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('persistent bottom sheet'),
                    onPressed: () => ct.showPersistentBottomSheet(),
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
