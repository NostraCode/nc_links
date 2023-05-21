part of '../_index.dart';

class FbAuthF extends StatelessWidget {
  const FbAuthF({Key? key}) : super(key: key);

  FbAuthCtrl get ct => Ctrl.fbAuth;
  FbAuthData get dt => Data.fbAuth.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('auth stream counter'),
        OnReactive(
          () => Text(dt.rxCounterStream.st.toString()),
        ),
      ],
    );
  }
}
