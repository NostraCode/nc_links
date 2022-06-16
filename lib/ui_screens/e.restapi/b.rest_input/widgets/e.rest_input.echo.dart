part of '../_index.dart';

class RestInputEcho extends StatelessWidget {
  const RestInputEcho({Key? key}) : super(key: key);

  RestInputCtrl get ct => x1RestInputCtrl;
  RestInputData get dt => x1RestInputData.st;

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
