part of '_index.dart';

class PhoneView extends StatelessWidget {
  const PhoneView({Key? key}) : super(key: key);

  PhoneCtrl get ct => Ctrl.phone;
  PhoneData get dt => Data.phone.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(56),
      //   child: PhoneAppbar(),
      // ),
      // floatingActionButton: PhoneFab(),
      body: KeyboardDismisser(
        gestures: const [
          GestureType.onTap,
          GestureType.onPanUpdateDownDirection,
        ],
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Column(
                      children: [
                        OnFormBuilder(
                          listenTo: dt.rxFormPhone,
                          builder: () {
                            return const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBoxH(20),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text('[debug] +62852-1122-1122'),
                                ),
                                SizedBoxH(20),
                                PhoneInput(),
                                SizedBoxH(20),
                                PhoneSubmit(),
                                SizedBoxH(30),
                                Divider(height: 1),
                              ],
                            );
                          },
                        ),
                        const SizedBoxH(20),
                        const PhoneNav(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
