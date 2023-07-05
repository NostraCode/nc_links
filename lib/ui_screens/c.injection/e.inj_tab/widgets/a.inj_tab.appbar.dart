part of '../_index.dart';

class InjTabAppbar extends StatelessWidget {
  const InjTabAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.title)),
      bottom: PreferredSize(
        preferredSize: const Size(0, 40),
        child: OnTabPageViewBuilder(
          builder: (index) => TabBar(
            controller: _dt.rxTab.tabController,
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
