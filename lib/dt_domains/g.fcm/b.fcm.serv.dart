part of '_index.dart';

final x1FcmServ = FcmServ();

class FcmServ {
  FcmData get dt => x1FcmData.st;

  init() async {
    logxx.i(FcmServ, '...');
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
      logxx.wtf(FcmServ, 'User granted permission');
      listenOnMessage();
      // getToken();
    } else {
      logxx.wtf(FcmServ, 'User declined or has not accepted permission');
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
    dt.rxPushNotification.st = notification;
    dt.rxTotalNotifications.setState((s) => s + 1);
    logxx.wtf(FcmServ, dt.rxPushNotification.st.toString());
  }

  displayNotif() {
    showSimpleNotification(
      Text(dt.rxPushNotification.st!.title!),
      leading: NotificationBadge(total: dt.rxTotalNotifications.st),
      subtitle: Text(dt.rxPushNotification.st!.body!),
      background: Colors.cyan.shade700,
      duration: const Duration(seconds: 2),
    );
  }

  getToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    // final fcmToken = await FirebaseMessaging.instance.getToken(
    // vapidKey: 'BJvWQDZpubre_8yf11hrd0dDhX3-UWyV-GuegPa72Ml5yvPqeVPVy2Eya22ypIlDMkhR7VNljskkLRNXOWEGlTI',
    // );
    logxx.wtf(FcmServ, fcmToken.toString());
  }

  goToScreen() {
    final screen = dt.rxPushNotification.st?.dataScreen;
    if (screen != null) {
      nav.to(screen);
      cleanNotificationState();
    }
  }

  cleanNotificationState() {
    dt.rxPushNotification.st = null;
  }

  listenOnMessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      logxx.wtf(FcmServ, 'Message title: ${message.notification?.title}');
      logxx.wtf(FcmServ, 'Message body: ${message.notification?.body}');
      logxx.wtf(FcmServ, 'Message data: ${message.data}');
      updateState(message);
      if (dt.rxPushNotification.st != null) {
        displayNotif();
        cleanNotificationState();
        logxx.wtf(FcmServ, 'foreground..!!!');
      }
      // goToScreen();
    });
  }

  // For handling notification when the app is in background but not terminated
  listenOnMessageOpenedApp() {
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      updateState(message);
      logxx.wtf(FcmServ, 'background, NOT terminated..!!!');
      goToScreen();
    });
  }

  // For handling notification when the app is in terminated state
  checkForInitialMessage() async {
    await Firebase.initializeApp();
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      updateState(initialMessage);
      logxx.wtf(FcmServ, 'background, terminated..!!!');
      goToScreen();
    }
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  logxx.wtf(
    FcmServ,
    "Handling a background message: ${message.messageId}",
  );
}
