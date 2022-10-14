part of '_index.dart';

class PushNotification {
  String? title;
  String? body;
  String? dataID;
  String? dataType;
  String? dataScreen;
  PushNotification({
    this.title,
    this.body,
    this.dataID,
    this.dataType,
    this.dataScreen,
  });

  @override
  String toString() {
    return 'PushNotification(title: $title, body: $body, dataID: $dataID, dataType: $dataType, screen: $dataScreen)';
  }
}
