part of '../_index.dart';

class InjFormEcho extends StatelessWidget {
  const InjFormEcho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Center(
        child: _dt.rxForx.isWaiting
            ? const CircularProgressIndicator()
            : ElevatedButton(
                child: const Text("login"),
                onPressed: () => _ct.submit(),
              ),
      ),
    );
  }
}
