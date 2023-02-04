part of '_index.dart';

class InjFormView extends ReactiveStatelessWidget {
  const InjFormView({Key? key}) : super(key: key);

  InjFormCtrl get ct => Ctrl.injForm;
  InjFormData get dt => Data.injForm.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjForxAppbar(),
      ),
      // floatingActionButton: const InjForxFab(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: OnFormBuilder(
            listenTo: dt.rxForx,
            builder: () {
              return ListView(
                children: [
                  const InjForxCharlie(),
                  const SizedBoxH(10),
                  const InjForxDelta(),
                  const SizedBoxH(10),
                  const SizedBoxH(10),
                  const InjFormEcho(),
                  const SizedBoxH(10),
                  if (dt.rxForx.isDirty) const Text('The form is changed but not submitted yet!')
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
