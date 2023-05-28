part of '_index.dart';

class UserApp {
  final String uid;
  final String? email;
  final String? displayName;
  final String? photoURL;
  final String? phoneNumber;
  final bool emailVerified;
  UserApp({
    this.uid = '',
    this.email,
    this.displayName,
    this.photoURL,
    this.phoneNumber,
    this.emailVerified = false,
  });

  UserApp.init({
    this.uid = '',
    this.email,
    this.displayName,
    this.photoURL,
    this.phoneNumber,
    this.emailVerified = false,
  });

  UserApp.mock({
    this.uid = 'mock uid',
    this.email = 'mock email',
    this.displayName = 'mock display name',
    this.photoURL = 'mock photo url',
    this.phoneNumber = 'mock phone number',
    this.emailVerified = true,
  });

  UserApp copyWith({
    String? uid,
    String? email,
    String? displayName,
    String? photoURL,
    String? phoneNumber,
    bool? emailVerified,
  }) {
    return UserApp(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      photoURL: photoURL ?? this.photoURL,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      emailVerified: emailVerified ?? this.emailVerified,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'uid': uid});
    if (email != null) {
      result.addAll({'email': email});
    }
    if (displayName != null) {
      result.addAll({'display_name': displayName});
    }
    if (photoURL != null) {
      result.addAll({'photo_u_r_l': photoURL});
    }
    if (phoneNumber != null) {
      result.addAll({'phone_number': phoneNumber});
    }
    result.addAll({'email_verified': emailVerified});

    return result;
  }

  factory UserApp.fromMap(Map<String, dynamic> map) {
    return UserApp(
      uid: map['uid'] ?? '',
      email: map['email'],
      displayName: map['display_name'],
      photoURL: map['photo_u_r_l'],
      phoneNumber: map['phone_number'],
      emailVerified: map['email_verified'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserApp.fromJson(String source) => UserApp.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserApp(uid: $uid, email: $email, displayName: $displayName, photoURL: $photoURL, phoneNumber: $phoneNumber, emailVerified: $emailVerified)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserApp &&
        other.uid == uid &&
        other.email == email &&
        other.displayName == displayName &&
        other.photoURL == photoURL &&
        other.phoneNumber == phoneNumber &&
        other.emailVerified == emailVerified;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        email.hashCode ^
        displayName.hashCode ^
        photoURL.hashCode ^
        phoneNumber.hashCode ^
        emailVerified.hashCode;
  }
}
