part of '../_index.dart';

class InjFormEcho extends StatelessWidget {
  const InjFormEcho({Key? key}) : super(key: key);

  InjFormCtrl get ct => Ctrl.injForm;
  InjFormData get dt => Data.injForm.st;

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
