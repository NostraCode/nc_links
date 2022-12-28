part of '../_index.dart';

class PopupHotel extends ReactiveStatelessWidget {
  const PopupHotel({Key? key}) : super(key: key);

  PopupCtrl get ct => x1PopupCtrl;
  PopupData get dt => x1PopupData.st;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 100,
      child: Center(
        child: ElevatedButton(
          child: const Text('hide'),
          onPressed: () => nav.back(),
        ),
      ),
    );
  }
}
