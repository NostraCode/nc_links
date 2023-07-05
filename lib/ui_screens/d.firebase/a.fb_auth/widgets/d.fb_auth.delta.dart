part of '../_index.dart';

class FbAuthDelta extends StatelessWidget {
  const FbAuthDelta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Container(
        child: _dt.rxUserApp.st == null
            ? const Text('you are not logged in yet')
            : Column(
                children: [
                  const Text('logged in as:'),
                  const SizedBoxH(10),
                  Text(_dt.rxUserApp.st?.email ?? 'no email'),
                  const SizedBoxH(10),
                  Text('${_dt.rxUserApp.st?.phoneNumber}'),
                  const SizedBoxH(10),
                  _dt.rxUserApp.st?.photoURL == null
                      ? const Text('no image')
                      : SizedBox(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              '${_dt.rxUserApp.st?.photoURL}',
                            ),
                          ),
                        ),
                ],
              ),
      ),
    );
  }
}
