part of '_index.dart';

class InjFormView extends ReactiveStatelessWidget {
  const InjFormView({Key? key}) : super(key: key);

  InjFormCtrl get ct => x1InjFormCtrl;
  InjFormData get dt => x1InjFormData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: InjFormAppbar(),
      ),
      // floatingActionButton: const InjFormFab(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: OnFormBuilder(
            listenTo: dt.rmForm,
            builder: () {
              return ListView(
                children: [
                  const InjFormCharlie(),
                  const SizedBoxH(10),
                  const InjFormDelta(),
                  const SizedBoxH(10),
                  const SizedBoxH(10),
                  const InjFormEcho(),
                  const SizedBoxH(10),
                  if (dt.rmForm.isDirty)
                    const Text('The form is changed but not submitted yet!')
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
