part of '../_index.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  HomeCtrl get ct => x1HomexCtrl;
  HomeData get dt => x1HomeData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.title)),
      // actions: [
      //   ButtonAppbarX(
      //     iconDatax: Icons.person,
      //     funcx: () => Fun.showBottomSheetWrap(
      //       context,
      //       'Profilex',
      //       const ProfilexView(),
      //     ),
      //   ),
      //   ButtonAppbarX(
      //     iconDatax: Icons.more_vert,
      //     funcx: () {
      //       Fun.showBottomSheetDraggable(
      //         context,
      //         'Settings',
      //         const ModalSettings(),
      //       );
      //     },
      //   ),
      // ],
    );
  }
}
