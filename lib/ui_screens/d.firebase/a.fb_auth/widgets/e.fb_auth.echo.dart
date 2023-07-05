part of '../_index.dart';

class FbAuthEcho extends StatelessWidget {
  const FbAuthEcho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnReactive(
          () => Text(
            _dt.rxUserApp.st == null
                ? 'user app null'
                : _dt.rxUserApp.st!.emailVerified
                    ? 'email is verified'
                    : 'email is not verified',
          ),
        ),
        const SizedBoxH(10),
        ElevatedButton(
          child: const Text('auth reload'),
          onPressed: () => _ct.authReload(),
        ),
        const Text('reload auth after verification'),
        const SizedBoxH(50),
        const Text('auth stream counter'),
        OnReactive(
          () => Text(_dt.rxCounterStream.st.toString()),
        ),
      ],
    );
  }
}
