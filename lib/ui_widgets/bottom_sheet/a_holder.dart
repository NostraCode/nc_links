part of '_index.dart';

class BottomSheetHolder extends StatelessWidget {
  const BottomSheetHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      child: Align(
        alignment: Alignment.topCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: Container(
            width: 35,
            height: 4,
            color: Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}
