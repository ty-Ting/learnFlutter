// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..authUserId = json['authUserId'] as num
    ..openId = json['openId'] as String
    ..unionId = json['unionId'] as String
    ..name = json['name'] as String
    ..username = json['username'] as String
    ..avatar = json['avatar'] as String
    ..email = json['email'] as String
    ..phoneNumber = json['phoneNumber'] as String
    ..authorities = json['authorities'] as List;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'authUserId': instance.authUserId,
      'openId': instance.openId,
      'unionId': instance.unionId,
      'name': instance.name,
      'username': instance.username,
      'avatar': instance.avatar,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'authorities': instance.authorities
    };
