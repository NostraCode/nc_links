part of '_index.dart';

final x1FcmCtrl = FcmCtrl();

class FcmCtrl {
  FcmData get dt => x1FcmData.st;

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

    final headers = {
      'content-type': 'application/json',
      'Authorization': 'key=${dt.serverKey}'
    };

    final response = await http.post(
      Uri.parse(postUrl),
      body: json.encode(data),
      encoding: Encoding.getByName('utf-8'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      logxx.wtf(FcmCtrl, 'test ok push CFM');
      return true;
    } else {
      logxx.e(FcmCtrl, 'CFM error');
      return false;
    }
  }
}
