part of '_index.dart';

class FcmCtrl {
  FcmData get dt => Data.fcm.st;

  init() => logxx.i(FcmCtrl, '...');

  void send() {
    dt.rxInt.setState((s) => s + 1);
    callOnFcmApiSendPushNotifications(
      title: 'fcm by api${dt.rxInt.st}',
      body: 'its working fine${dt.rxInt.st}',
      id: 'Order',
      type: '123',
      route: Routes.restList,
    );
  }

  Future<bool> callOnFcmApiSendPushNotifications({
    required String title,
    required String body,
    required String type,
    required String id,
    required String route,
  }) async {
    const postUrl = 'https://fcm.googleapis.com/fcm/send';
    final data = {
      "to": "/topics/${dt.rxTopic.st}",
      "notification": {
        "title": title,
        "body": body,
      },
      "data": {
        "type": type,
        "id": id,
        "screen": route,
        "click_action": 'FLUTTER_NOTIFICATION_CLICK',
      }
    };

    final headers = {'content-type': 'application/json', 'Authorization': 'key=${config.st.fcmServerKey}'};

    try {
      await Dio().post(
        postUrl,
        data: json.encode(data),
        options: Options(
          headers: headers,
        ),
      );
      logxx.s(FcmCtrl, 'test ok push CFM');
      return true;
    } catch (e) {
      Fun.handleException(e);
    }
    return false;
  }
}
