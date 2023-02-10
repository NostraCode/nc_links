part of '../_index.dart';

class InjTabAppbar extends StatelessWidget {
  const InjTabAppbar({Key? key}) : super(key: key);

  InjTabCtrl get ct => Ctrl.injTab;
  InjTabData get dt => Data.injTab.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
      bottom: PreferredSize(
        preferredSize: const Size(0, 40),
        child: OnTabPageViewBuilder(
          builder: (index) => TabBar(
            controller: dt.rxTab.tabController,
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
