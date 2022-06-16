part of '../_index.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  HomeCtrl get ct => x1HomexCtrl;
  HomeData get dt => x1HomeData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: OnReactive(() => Text(dt.title)),
      actions: [
        OnReactive(
          () => Checkbox(
            value: dt.rxSwitch.st,
            onChanged: (_) => ct.toogleSwitch(context),
          ),
        ),
        const SizedBoxW(8),
        // OnReactive(
        //   () => Switch(
        //     value: dt.rxSwitch.st,
        //     onChanged: (_) => ct.toogleSwitch(context),
        //   ),
        // ),
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
      ],
    );
  }
}
