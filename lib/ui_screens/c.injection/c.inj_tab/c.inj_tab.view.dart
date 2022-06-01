part of '_index.dart';

class InjTabView extends StatelessWidget {
  const InjTabView({Key? key}) : super(key: key);

  InjTabCtrl get ct => x1InjTabCtrl;
  InjTabData get dt => x1InjTabData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56 + 40),
        child: InjTabAppbar(),
      ),
      // floatingActionButton: const InjTabFab(),
      bottomNavigationBar: SizedBox(
        height: 74,
        child: Column(
          children: [
            OnTabPageViewBuilder(
              builder: (index) => TabBar(
                controller: dt.rxTab.tabController,
                // isScrollable: true,
                indicatorColor: Colors.transparent,
                unselectedLabelStyle:
                    const TextStyle(color: Colors.transparent),
                tabs: const [
                  Tab(
                    child: Text('charlie', textScaleFactor: 0.7),
                    icon: Icon(Icons.flare),
                  ),
                  Tab(
                    child: Text('delta', textScaleFactor: 0.7),
                    icon: Icon(Icons.blur_on),
                  ),
                  Tab(
                    child: Text('echo', textScaleFactor: 0.7),
                    icon: Icon(Icons.auto_awesome),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: OnTabPageViewBuilder(
        builder: (index) => PageView(
          controller: dt.rxTab.pageController,
          children: const [
            InjTabCharlie(),
            InjTabDelta(),
            InjTabEcho(),
          ],
        ),
      ),
    );
  }
}
