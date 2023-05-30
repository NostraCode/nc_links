part of '../_index.dart';

class FbAuthEcho extends StatelessWidget {
  const FbAuthEcho({Key? key}) : super(key: key);

  FbAuthCtrl get ct => Ctrl.fbAuth;
  FbAuthData get dt => Data.fbAuth.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnReactive(
          () => Text(
            dt.rxUserApp.st == null
                ? 'user app null'
                : dt.rxUserApp.st!.emailVerified
                    ? 'email is verified'
                    : 'email is not verified',
          ),
        ),
        const SizedBoxH(10),
        ElevatedButton(
          child: const Text('auth reload'),
          onPressed: () => ct.authReload(),
        ),
        const Text('reload auth after verification'),
        const SizedBoxH(50),
        const Text('auth stream counter'),
        OnReactive(
          () => Text(dt.rxCounterStream.st.toString()),
        ),
      ],
    );
  }
}
