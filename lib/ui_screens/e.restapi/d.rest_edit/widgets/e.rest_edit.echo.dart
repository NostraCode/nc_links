part of '../_index.dart';

class RestEditEcho extends StatelessWidget {
  const RestEditEcho({Key? key}) : super(key: key);

  RestEditCtrl get ct => x1RestEditCtrl;
  RestEditData get dt => x1RestEditData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Center(
        child: dt.rxForx.isWaiting
            ? const CircularProgressIndicator()
            : ElevatedButton(
                child: const Text("submit"),
                onPressed: () => ct.submit(),
              ),
      ),
    );
  }
}
