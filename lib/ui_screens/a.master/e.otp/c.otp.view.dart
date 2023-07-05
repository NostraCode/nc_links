part of '_index.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(56),
      //   child: OtpAppbar(),
      // ),
      // floatingActionButton: OtpFab(),
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
                          listenTo: _dt.rxFormPhone,
                          builder: () {
                            return const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBoxH(20),
                                Text('[debug] +62811-2222-3333'),
                                SizedBoxH(20),
                                OtpPhone(),
                                SizedBoxH(20),
                                OtpBtnPhone(),
                                SizedBoxH(30),
                                Divider(height: 1),
                              ],
                            );
                          },
                        ),
                        OnFormBuilder(
                          listenTo: _dt.rxFormPhone,
                          builder: () {
                            return const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBoxH(30),
                                Text('[debug] 112233'),
                                SizedBoxH(20),
                                OtpCode(),
                                SizedBoxH(20),
                                OtpBtnCode(),
                                SizedBoxH(30),
                                Divider(height: 1),
                              ],
                            );
                          },
                        ),
                        const SizedBoxH(20),
                        const OtpBtnToLogin(),
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
