part of '../_index.dart';

class RegisBtnSubmit extends StatelessWidget {
  const RegisBtnSubmit({Key? key}) : super(key: key);

  RegisCtrl get ct => Ctrl.regis;
  RegisData get dt => Data.regis.st;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: OutlinedButton(
        child: const Text('REGISTER'),
        onPressed: () => ct.register(),
      ),
    );
  }
}
