part of '../_index.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: OnReactive(() => Text(_dt.title)),
      actions: [
        OnReactive(
          () => Checkbox(
            value: _dt.rxSwitch.st,
            onChanged: (_) => _ct.toogleSwitch(context),
          ),
        ),
        IconButton(
          onPressed: () => RM.navigate.toBottomSheet(
            const HomeBottomSheet(),
            enableDrag: true,
            isDismissible: true,
            isScrollControlled: true,
            // backgroundColor: Colors.transparent,
            // barrierColor: Colors.yellow,
            // clipBehavior: Clip.hardEdge,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          icon: const Icon(Icons.more_vert),
        ),
        const SizedBoxW(4),
        // OnReactive(
        //   () => Switch(
        //     value: _dt.rxSwitch.st,
        //     onChanged: (_) => _ct.toogleSwitch(context),
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
