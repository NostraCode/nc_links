part of '../_index.dart';

class ChatMessageBalloon extends StatelessWidget {
  final int index;
  final bool isSend;
  final bool isNip;
  const ChatMessageBalloon({
    Key? key,
    required this.index,
    required this.isSend,
    required this.isNip,
  }) : super(key: key);

  ChatMessageCtrl get ct => Ctrl.chatMessage;
  ChatMessageData get dt => Data.chatMessage.st;

  @override
  Widget build(BuildContext context) {
    final item = dt.rxChatMessages.st[index];

    return Padding(
      padding: EdgeInsets.only(top: isNip ? 8 : 1.5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: isSend ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          SizedBox(width: isSend ? 50 : 10),
          isNip && !isSend ? CustomPaint(painter: NipLeft(getColor())) : const SizedBox.shrink(),
          Flexible(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: getColor(),
                    borderRadius: getBorder(),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //   width: 120,
                        //   height: 12,
                        //   color: Colors.blue,
                        // ),
                        Text.rich(
                          textScaleFactor: 0.95,
                          TextSpan(
                            children: [
                              TextSpan(
                                text: item.message,
                              ),
                              const WidgetSpan(
                                child: SizedBox(
                                  width: 55,
                                  height: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 5, 3),
                  child: Text.rich(
                    textAlign: TextAlign.right,
                    TextSpan(
                      children: [
                        WidgetSpan(
                          child: Opacity(
                            opacity: 0.6,
                            child: Text(
                              ct.getTime(item.timestamp),
                              textScaleFactor: 0.80,
                            ),
                          ),
                        ),
                        // const WidgetSpan(child: SizedBoxW(2)),
                        // WidgetSpan(
                        //   child: Icon(
                        //     Icons.done_all,
                        //     size: 15,
                        //     color: themeRM.activeTheme().colorScheme.primary,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          isNip && isSend ? CustomPaint(painter: NipRight(getColor())) : const SizedBox.shrink(),
          SizedBox(width: isSend ? 10 : 50),
        ],
      ),
    );
  }

  Color getColor() {
    final primaryColor = themeRM.activeTheme().colorScheme.primary;
    return isSend
        // ? themeRM.activeTheme().colorScheme.primary.withOpacity(0.25)
        ? primaryColor.withOpacity(0.15)
        : Colors.grey.withOpacity(0.15);
  }

  BorderRadius getBorder() {
    return !isNip
        ? const BorderRadius.all(Radius.circular(8))
        : isSend
            ? const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              )
            : const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
                topRight: Radius.circular(8),
              );
  }
}
