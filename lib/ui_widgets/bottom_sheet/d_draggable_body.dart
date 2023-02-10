part of '_index.dart';

class BottomSheetDraggable extends StatelessWidget {
  final String title;
  final Widget widget;
  const BottomSheetDraggable({
    Key? key,
    required this.title,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      maxChildSize: 0.9,
      minChildSize: 0.3,
      expand: false,
      builder: (_, controller) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            children: [
              const BottomSheetHolder(),
              BottomSheetTopbar(title: title),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(0),
                    controller: controller, // set this too
                    child: widget,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
