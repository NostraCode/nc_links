part of '../_index.dart';

class PhoneFab extends StatelessWidget {
  const PhoneFab({Key? key}) : super(key: key);

  PhoneCtrl get ct => Ctrl.phone;
  PhoneData get dt => Data.phone.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
