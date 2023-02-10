part of '../_index.dart';

class RestEditEcho extends StatelessWidget {
  const RestEditEcho({Key? key}) : super(key: key);

  RestEditCtrl get ct => Ctrl.restEdit;
  RestEditData get dt => Data.restEdit.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Center(
        child: dt.rxForm.isWaiting
            ? const CircularProgressIndicator()
            : ElevatedButton(
                child: const Text("submit"),
                onPressed: () => ct.submit(),
              ),
      ),
    );
  }
}
