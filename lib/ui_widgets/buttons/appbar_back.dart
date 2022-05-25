part of '_index.dart';

class ButtonAppbarBack extends StatelessWidget {
  const ButtonAppbarBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (PlatformType.isAndroid) {
      return ButtonAppbarX(
        iconDatax: Icons.arrow_back,
        iconSizex: 25,
        funcx: () => nav.back(),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ButtonAppbarX(
        iconDatax: CupertinoIcons.back,
        iconSizex: 30,
        funcx: () => nav.back(),
      ),
    );
  }
}
