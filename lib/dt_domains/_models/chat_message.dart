part of '_index.dart';

class ChatMessage {
  String displayName;
  String idUser;
  String message;
  int timestamp;
  ChatMessage({
    this.displayName = '',
    this.idUser = '',
    this.message = '',
    this.timestamp = 0,
  });

  ChatMessage copyWith({
    String? displayName,
    String? idUser,
    String? message,
    int? timestamp,
  }) {
    return ChatMessage(
      displayName: displayName ?? this.displayName,
      idUser: idUser ?? this.idUser,
      message: message ?? this.message,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'display_name': displayName,
      'id_user': idUser,
      'message': message,
      'timestamp': timestamp,
    };
  }

  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      displayName: map['display_name'] ?? '',
      idUser: map['id_user'] ?? '',
      message: map['message'] ?? '',
      timestamp: map['timestamp']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatMessage.fromJson(String source) =>
      ChatMessage.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatMessage(displayName: $displayName, idUser: $idUser, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatMessage &&
        other.displayName == displayName &&
        other.idUser == idUser &&
        other.message == message &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return displayName.hashCode ^
        idUser.hashCode ^
        message.hashCode ^
        timestamp.hashCode;
  }
}
