part of '../_index.dart';

class FbAuthE extends StatelessWidget {
  const FbAuthE({Key? key}) : super(key: key);

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
        const SizedBoxH(20),
        const Text('reload auth after verification'),
        ElevatedButton(
          child: const Text('auth reload'),
          onPressed: () => ct.authReload(),
        ),
      ],
    );
  }
}
