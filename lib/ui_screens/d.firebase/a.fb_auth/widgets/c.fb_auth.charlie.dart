part of '../_index.dart';

class FbAuthC extends StatelessWidget {
  const FbAuthC({Key? key}) : super(key: key);

  FbAuthCtrl get ct => x1FbAuthCtrl;
  FbAuthData get dt => x1FbAuthData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Container(
        child: dt.rmUser.st == null
            ? const Text('you are not logged in yet')
            : Column(
                children: [
                  const Text('you are logged in'),
                  const SizedBoxH(10),
                  Text('${dt.rmUser.st?.email}'),
                  const SizedBoxH(5),
                  dt.rmUser.st?.photoURL == null
                      ? const Text('no image')
                      : SizedBox(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              '${dt.rmUser.st?.photoURL}',
                            ),
                          ),
                        ),
                ],
              ),
      ),
    );
  }
}
