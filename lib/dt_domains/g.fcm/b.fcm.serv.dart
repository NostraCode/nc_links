part of '_index.dart';

final x1FcmServ = FcmServ();

class FcmServ {
  FcmData get dt => x1FcmData.st;

  init() async {
    loggerx(FcmServ).v('init...');
    registerNotification();
    checkForInitialMessage();
    listenOnMessageOpenedApp();
  }

  void registerNotification() async {
    await Firebase.initializeApp();
    dt.messaging = FirebaseMessaging.instance;

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    final settings = await dt.messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
      // announcement: false,
      // carPlay: false,
      // criticalAlert: false,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      loggerx(FcmServ).v('User granted permission');
      listenOnMessage();
      // getToken();
    } else {
      loggerx(FcmServ).v('User declined or has not accepted permission');
    }
  }

  updateState(RemoteMessage message) {
    PushNotification notification = PushNotification(
      title: message.notification?.title,
      body: message.notification?.body,
      dataID: message.data['id'],
      dataType: message.data['type'],
      dataScreen: message.data['screen'],
    );
    dt.rmPushNotification.st = notification;
    dt.rmTotalNotifications.setState((s) => s + 1);
    loggerx(FcmServ).v(dt.rmPushNotification.st.toString());
  }

  displayNotif() {
    showSimpleNotification(
      Text(dt.rmPushNotification.st!.title!),
      leading: NotificationBadge(total: dt.rmTotalNotifications.st),
      subtitle: Text(dt.rmPushNotification.st!.body!),
      background: Colors.cyan.shade700,
      duration: const Duration(seconds: 2),
    );
  }

  getToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    // final fcmToken = await FirebaseMessaging.instance.getToken(
    // vapidKey: 'BJvWQDZpubre_8yf11hrd0dDhX3-UWyV-GuegPa72Ml5yvPqeVPVy2Eya22ypIlDMkhR7VNljskkLRNXOWEGlTI',
    // );
    loggerx(FcmServ).v(fcmToken);
  }

  goToScreen() {
    final screen = dt.rmPushNotification.st?.dataScreen;
    if (screen != null) {
      nav.to(screen);
      cleanNotificationState();
    }
  }

  cleanNotificationState() {
    dt.rmPushNotification.st = null;
  }

  listenOnMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      loggerx(FcmServ).v('Message title: ${message.notification?.title}');
      loggerx(FcmServ).v('Message body: ${message.notification?.body}');
      loggerx(FcmServ).v('Message data: ${message.data}');
      updateState(message);
      if (dt.rmPushNotification.st != null) {
        displayNotif();
        cleanNotificationState();
        loggerx(FcmServ).v('foreground..!!!');
      }
      // goToScreen();
    });
  }

  // For handling notification when the app is in background but not terminated
  listenOnMessageOpenedApp() {
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      updateState(message);
      loggerx(FcmServ).v('background, NOT terminated..!!!');
      goToScreen();
    });
  }

  // For handling notification when the app is in terminated state
  checkForInitialMessage() async {
    await Firebase.initializeApp();
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      updateState(initialMessage);
      loggerx(FcmServ).v('background, terminated..!!!');
      goToScreen();
    }
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  loggerx(FcmServ).v(
    "Handling a background message: ${message.messageId}",
  );
}
