part of '../_index.dart';

class InjTabAppbar extends StatelessWidget {
  const InjTabAppbar({Key? key}) : super(key: key);

  InjTabCtrl get ct => x1InjTabCtrl;
  InjTabData get dt => x1InjTabData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
      bottom: PreferredSize(
        preferredSize: const Size(0, 40),
        child: OnTabPageViewBuilder(
          builder: (index) => TabBar(
            controller: dt.rmTab.tabController,
            isScrollable: true,
            tabs: const [
              Tab(child: Text('charlie')),
              Tab(child: Text('delta')),
              Tab(child: Text('echo')),
            ],
          ),
        ),
      ),
    );
  }
}
