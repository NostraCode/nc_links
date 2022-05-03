part of '../_index.dart';

class RestInputEcho extends StatelessWidget {
  const RestInputEcho({Key? key}) : super(key: key);

  RestInputCtrl get ct => x1RestInputCtrl;
  RestInputData get dt => x1RestInputData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Center(
        child: dt.rmForm.isWaiting
            ? const CircularProgressIndicator()
            : ElevatedButton(
                child: const Text("submit"),
                onPressed: () => ct.submit(),
              ),
      ),
    );
  }
}
