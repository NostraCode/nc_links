part of '../_index.dart';

class FbAuthC extends StatelessWidget {
  const FbAuthC({Key? key}) : super(key: key);

  FbAuthCtrl get ct => Ctrl.fbAuth;
  FbAuthData get dt => Data.fbAuth.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Container(
        child: dt.rxUserApp.st == null
            ? const Text('you are not logged in yet')
            : Column(
                children: [
                  const Text('you are logged in as:'),
                  const SizedBoxH(10),
                  Text('${dt.rxUserApp.st?.email}'),
                  const SizedBoxH(10),
                  Text('${dt.rxUserApp.st?.phoneNumber}'),
                  const SizedBoxH(20),
                  dt.rxUserApp.st?.photoURL == null
                      ? const Text('no image')
                      : SizedBox(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              '${dt.rxUserApp.st?.photoURL}',
                            ),
                          ),
                        ),
                ],
              ),
      ),
    );
  }
}
