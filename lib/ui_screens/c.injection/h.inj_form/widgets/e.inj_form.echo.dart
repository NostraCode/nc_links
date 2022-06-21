part of '../_index.dart';

class InjFormEcho extends StatelessWidget {
  const InjFormEcho({Key? key}) : super(key: key);

  InjFormCtrl get ct => x1InjFormCtrl;
  InjFormData get dt => x1InjFormData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Center(
        child: dt.rxForx.isWaiting
            ? const CircularProgressIndicator()
            : ElevatedButton(
                child: const Text("login"),
                onPressed: () => ct.submit(),
              ),
      ),
    );
  }
}