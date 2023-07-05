part of '../_index.dart';

class PopupHotel extends ReactiveStatelessWidget {
  const PopupHotel({Key? key}) : super(key: key);

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
