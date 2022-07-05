part of '_index.dart';

class ChatRoom {
  String title;
  String lastMessage;
  int timestamp;
  ChatRoom({
    this.title = '',
    this.lastMessage = '',
    this.timestamp = 0,
  });

  ChatRoom copyWith({
    String? title,
    String? lastMessage,
    int? timestamp,
  }) {
    return ChatRoom(
      title: title ?? this.title,
      lastMessage: lastMessage ?? this.lastMessage,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'last_message': lastMessage,
      'timestamp': timestamp,
    };
  }

  factory ChatRoom.fromMap(Map<String, dynamic> map) {
    return ChatRoom(
      title: map['title'] ?? '',
      lastMessage: map['last_message'] ?? '',
      timestamp: map['timestamp']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatRoom.fromJson(String source) =>
      ChatRoom.fromMap(json.decode(source));

  @override
  String toString() =>
      'ChatChannel(title: $title, lastMessage: $lastMessage, timestamp: $timestamp)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatRoom &&
        other.title == title &&
        other.lastMessage == lastMessage &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode =>
      title.hashCode ^ lastMessage.hashCode ^ timestamp.hashCode;
}
