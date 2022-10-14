part of '_index.dart';

class ButtonAppbarX extends StatelessWidget {
  final IconData iconDatax;
  final double iconSizex;
  final Function funcx;
  const ButtonAppbarX({
    Key? key,
    required this.iconDatax,
    this.iconSizex = 24,
    required this.funcx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Opacity(
        // opacity: Get.isDarkMode ? 1 : 0.8,
        opacity: themeRM.isDarkTheme ? 1 : 0.8,
        child: Icon(iconDatax),
      ),
      iconSize: iconSizex,
      splashRadius: 35,
      onPressed: () => funcx(),
    );
    // return Container(
    //   width: 56,
    //   height: 56,
    //   child: Material(
    //     type: MaterialType.transparency,
    //     child: IconButton(
    //       icon: Opacity(
    //         opacity: Get.isDarkMode ? 1 : 0.8,
    //         child: Icon(iconDatax),
    //       ),
    //       iconSize: iconSizex,
    //       splashRadius: 70,
    //       onPressed: () => funcx(),
    //     ),
    //   ),
    // );
  }
}
