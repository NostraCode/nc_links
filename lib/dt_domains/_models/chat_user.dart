part of '_index.dart';

class ChatUser {
  String idUser;
  String displayName;
  String photoUrl;
  ChatUser({
    this.idUser = '',
    this.displayName = '',
    this.photoUrl = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'id_user': idUser,
      'display_name': displayName,
      'photo_url': photoUrl,
    };
  }

  factory ChatUser.fromMap(Map<String, dynamic> map) {
    return ChatUser(
      idUser: map['id_user'] ?? '',
      displayName: map['display_name'] ?? '',
      photoUrl: map['photo_url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatUser.fromJson(String source) =>
      ChatUser.fromMap(json.decode(source));

  ChatUser copyWith({
    String? idUser,
    String? displayName,
    String? photoUrl,
  }) {
    return ChatUser(
      idUser: idUser ?? this.idUser,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  @override
  String toString() =>
      'ChatUser(idUser: $idUser, displayName: $displayName, photoUrl: $photoUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChatUser &&
        other.idUser == idUser &&
        other.displayName == displayName &&
        other.photoUrl == photoUrl;
  }

  @override
  int get hashCode =>
      idUser.hashCode ^ displayName.hashCode ^ photoUrl.hashCode;
}
