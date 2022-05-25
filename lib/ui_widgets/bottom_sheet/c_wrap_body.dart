part of '_index.dart';

class BottomSheetWrap extends StatelessWidget {
  final String title;
  final Widget widget;
  final bool isFullWidth;
  const BottomSheetWrap({
    Key? key,
    required this.title,
    required this.widget,
    this.isFullWidth = false,
  }) : super(key: key);

  const BottomSheetWrap.fullWidth({
    Key? key,
    required this.widget,
    required this.title,
    this.isFullWidth = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Wrap(
        children: [
          // const BottomSheetHolder(),
          title == '' ? const SizedBox.shrink() : BottomSheetTopbar(title: title),
          Center(
            child: Stack(
              children: [
                Container(
                  padding:
                      isFullWidth ? const EdgeInsets.fromLTRB(0, 0, 0, 20) : const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  width: double.infinity,
                  child: widget,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
