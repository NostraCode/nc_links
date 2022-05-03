part of '../_index.dart';

class PopupFanta extends ReactiveStatelessWidget {
  const PopupFanta({Key? key}) : super(key: key);

  PopupCtrl get ct => x1PopupCtrl;
  PopupData get dt => x1PopupData.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      height: dt.rmInt.st < 1 ? 200 : null,
      // color: Colors.blue,
      child: DraggableScrollableSheet(
        expand: false,
        initialChildSize: dt.rmInt.st < 1 ? 1 : 0.5,
        minChildSize: 0.25,
        maxChildSize: 1,
        builder: (context, controller) => Container(
          color: Colors.green,
          child: dt.rmInt.st < 1
              ? const XshowFantaHeader()
              : SingleChildScrollView(
                  physics: dt.rmInt.st < 1
                      ? const NeverScrollableScrollPhysics()
                      : null,
                  controller: controller,
                  child: Column(
                    children: [
                      const XshowFantaHeader(),
                      for (var i = 0; i < dt.rmInt.st; i++)
                        Card(
                          child: Container(
                            height: 80,
                          ),
                        ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}

class XshowFantaHeader extends ReactiveStatelessWidget {
  const XshowFantaHeader({Key? key}) : super(key: key);

  PopupCtrl get ct => x1PopupCtrl;
  PopupData get dt => x1PopupData.st;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 120,
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(dt.rmInt.st < 1 ? 'fixed' : 'dragable'),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => RM.navigate.back(),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Icon(Icons.remove),
                      onPressed: () => ct.decrease(),
                    ),
                    const SizedBoxW(20),
                    Text('${dt.rmInt.st}', textScaleFactor: 1.5),
                    const SizedBoxW(20),
                    ElevatedButton(
                      child: const Icon(Icons.add),
                      onPressed: () => ct.increase(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
