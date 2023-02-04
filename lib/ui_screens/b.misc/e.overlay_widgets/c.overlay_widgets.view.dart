part of '_index.dart';

class OverlayWidgetsView extends StatelessWidget {
  const OverlayWidgetsView({Key? key}) : super(key: key);

  OverlayWidgetsCtrl get ct => Ctrl.overlayWidget;
  OverlayWidgetsData get dt => Data.overlayWidget.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: OverlayWidgetsAppbar(),
      ),
      // floatingActionButton: const OverlayWidgetsFab(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            children: [
              const SizedBoxH(5),
              const Text('toast'),
              const SizedBoxH(5),
              Wrap(
                spacing: 8,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => toast(
                      'this is a message from toast',
                    ),
                    child: const Text('toast'),
                  ),
                ],
              ),
              const SizedBoxH(20),
              const Text('custom'),
              const SizedBoxH(5),
              Wrap(
                spacing: 8,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showOverlay((_, t) {
                        return Theme(
                          data: Theme.of(context),
                          child: Opacity(
                            opacity: t,
                            child: const IosStyleToast(),
                          ),
                        );
                      }, key: const ValueKey('hello'));
                    },
                    child: const Text('iOS Style Dialog'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showOverlay((context, t) {
                        return CustomAnimationToast(value: t);
                      }, key: const ValueKey('hello'), curve: Curves.decelerate);
                    },
                    child: const Text('custom animation overlay'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showOverlay((context, t) {
                        return Container(
                          color: Color.lerp(Colors.transparent, Colors.black54, t),
                          child: FractionalTranslation(
                            translation: Offset.lerp(const Offset(0, -1), const Offset(0, 0), t)!,
                            child: Column(
                              children: <Widget>[
                                MessageNotification(
                                  message: 'Hello',
                                  onReply: () {
                                    OverlaySupportEntry.of(context)!.dismiss();
                                  },
                                  key: ModalKey(const Object()),
                                ),
                              ],
                            ),
                          ),
                        );
                      }, duration: Duration.zero);
                    },
                    child: const Text('notification with barrier'),
                  ),
                ],
              ),
              const SizedBoxH(20),
              const Text('notification'),
              const SizedBoxH(5),
              Wrap(
                spacing: 8,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showSimpleNotification(
                        const Text(
                          'this is a message from simple notification',
                        ),
                        background: Colors.green,
                      );
                    },
                    child: const Text(
                      'Auto Dismiss Notification',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSimpleNotification(
                        const Text('you got a simple message'),
                        trailing: Builder(builder: (context) {
                          return TextButton(
                            onPressed: () {
                              OverlaySupportEntry.of(context)!.dismiss();
                            },
                            child: const Text(
                              'Dismiss',
                              style: TextStyle(color: Colors.amber),
                            ),
                          );
                        }),
                        background: Colors.green,
                        autoDismiss: false,
                        slideDismissDirection: DismissDirection.up,
                      );
                    },
                    child: const Text('Fixed Notification'),
                  ),
                  ElevatedButton(
                    child: const Text('Bottom Notification'),
                    onPressed: () {
                      showSimpleNotification(
                        const Text('Hello'),
                        position: NotificationPosition.bottom,
                        slideDismissDirection: DismissDirection.down,
                      );
                    },
                  ),
                ],
              ),
              const SizedBoxH(20),
              const Text('custom notification'),
              const SizedBoxH(5),
              Wrap(
                spacing: 8,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showOverlayNotification((context) {
                        return MessageNotification(
                          message: messages[3],
                          onReply: () {
                            OverlaySupportEntry.of(context)!.dismiss();
                            toast('you checked this message');
                          },
                        );
                      }, duration: const Duration(milliseconds: 4000));
                    },
                    child: const Text('custom message notification'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final random = Random();
                      for (var i = 0; i < messages.length; i++) {
                        await Future.delayed(Duration(milliseconds: 200 + random.nextInt(200)));
                        showOverlayNotification((context) {
                          return MessageNotification(
                            message: messages[i],
                            onReply: () {
                              OverlaySupportEntry.of(context)?.dismiss();
                              toast('you checked this message');
                            },
                          );
                        }, duration: const Duration(milliseconds: 4000), key: const ValueKey('message'));
                      }
                    },
                    child: const Text('message sequence'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
