part of '_index.dart';

class FcmCtrl {
  init() => logxx.i(FcmCtrl, '...');

  void send() {
    _dt.rxInt.setState((s) => s + 1);
    callOnFcmApiSendPushNotifications(
      title: 'fcm by api${_dt.rxInt.st}',
      body: 'its working fine${_dt.rxInt.st}',
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
      "to": "/topics/${_dt.rxTopic.st}",
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
