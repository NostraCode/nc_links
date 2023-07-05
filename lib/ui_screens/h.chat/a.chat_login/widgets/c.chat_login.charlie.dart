part of '../_index.dart';

class ChatLoginCharlie extends StatelessWidget {
  const ChatLoginCharlie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Container(
        child: _dt.rxUser.st == null
            ? const Text('you are not logged in yet')
            : Column(
                children: [
                  const Text('you are logged in'),
                  const SizedBoxH(10),
                  Text('${_dt.rxUser.st?.email}'),
                  const SizedBoxH(5),
                  _dt.rxUser.st?.photoURL == null
                      ? const Text('no image')
                      : SizedBox(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              '${_dt.rxUser.st?.photoURL}',
                            ),
                          ),
                        ),
                ],
              ),
      ),
    );
  }
}
