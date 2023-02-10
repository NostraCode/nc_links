part of '../_index.dart';

class InjStateAppbar extends StatelessWidget {
  const InjStateAppbar({Key? key}) : super(key: key);

  InjStateCtrl get ct => Ctrl.injState;
  InjStateData get dt => Data.injState.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
      // title: OnReactive(() => Text(dt.title)),

      // bottom: PreferredSize(
      //   preferredSize: const Size(0, 40),
      //   child: OnTabPageViewBuilder(
      //     builder: (index) => TabBar(
      //       controller: x1State5Ctrl.data.rxTab.tabController,
      //       isScrollable: true,
      //       tabs: const [
      //         Tab(child: Text('charlie')),
      //         Tab(child: Text('delta')),
      //         Tab(child: Text('echo')),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
