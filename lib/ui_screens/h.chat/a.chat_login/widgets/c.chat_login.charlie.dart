part of '../_index.dart';

class ChatLoginCharlie extends StatelessWidget {
  const ChatLoginCharlie({Key? key}) : super(key: key);

  ChatLoginCtrl get ct => x1ChatLoginCtrl;
  ChatLoginData get dt => x1ChatLoginData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Container(
        child: dt.rxUser.st == null
            ? const Text('you are not logged in yet')
            : Column(
                children: [
                  const Text('you are logged in'),
                  const SizedBoxH(10),
                  Text('${dt.rxUser.st?.email}'),
                  const SizedBoxH(5),
                  dt.rxUser.st?.photoURL == null
                      ? const Text('no image')
                      : SizedBox(
                          width: 50,
                          height: 50,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              '${dt.rxUser.st?.photoURL}',
                            ),
                          ),
                        ),
                ],
              ),
      ),
    );
  }
}
