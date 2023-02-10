part of '_index.dart';

class BottomSheetTopbar extends StatelessWidget {
  final String title;
  const BottomSheetTopbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: SizedBox(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 56,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  child: IconButton(
                    splashRadius: 30,
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                    onPressed: () => nav.back(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
