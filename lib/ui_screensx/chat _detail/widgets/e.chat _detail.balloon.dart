part of '../_index.dart';

class ChatDetailBalloon extends StatelessWidget {
  final int index;
  final bool isSend;
  final bool isNip;
  const ChatDetailBalloon({
    Key? key,
    required this.index,
    required this.isSend,
    required this.isNip,
  }) : super(key: key);

  ChatDetailCtrl get ct => x1ChatDetailCtrl;
  ChatDetailData get dt => x1ChatDetailData.st;

  @override
  Widget build(BuildContext context) {
    final item = dt.rxChatList.st[index];
    final colorSend =
        themeRM.activeTheme().colorScheme.primary.withOpacity(0.25);
    final colorRecieve = Colors.grey.withOpacity(0.25);

    return Container(
      margin: EdgeInsets.only(
        top: isNip ? 8 : 1.5,
        left: isSend ? 50 : 10,
        right: isSend ? 10 : 50,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: isNip && !isSend,
            child: CustomPaint(
              painter: NipLeft(colorRecieve),
            ),
          ),
          Expanded(
            child: Align(
              alignment: isSend ? Alignment.topRight : Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(12, 4, 12, 6),
                decoration: BoxDecoration(
                  color: isSend ? colorSend : colorRecieve,
                  borderRadius: !isNip
                      ? const BorderRadius.all(Radius.circular(8))
                      : isSend
                          ? const BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(0),
                            )
                          : const BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(8),
                            ),
                ),
                child: IntrinsicWidth(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.done_all,
                              size: 16,
                              color: themeRM.activeTheme().colorScheme.primary,
                            ),
                            const Opacity(
                              opacity: 0.6,
                              child: Text(
                                '~Bambang',
                                textScaleFactor: 0.8,
                              ),
                            ),
                            const Spacer(),
                            Opacity(
                              opacity: 0.6,
                              child: Text(
                                item.time,
                                textScaleFactor: 0.8,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        item.message,
                        textScaleFactor: 0.95,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: isNip && isSend,
            child: CustomPaint(
              painter: NipRight(colorSend),
            ),
          ),
        ],
      ),
    );
  }
}
