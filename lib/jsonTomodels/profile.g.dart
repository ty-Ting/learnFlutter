// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile()
    ..user = json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>)
    ..accessToken = json['accessToken'] as String
    ..tokenType = json['tokenType'] as num
    ..cache = json['cache'] == null
        ? null
        : CacheConfig.fromJson(json['cache'] as Map<String, dynamic>)
    ..state = json['state'] as String
    ..expiresIn = json['expiresIn'] as String
    ..openId = json['openId'] as String
    ..unionId = json['unionId'] as String
    ..jti = json['jti'] as String;
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'cache': instance.cache,
      'state': instance.state,
      'expiresIn': instance.expiresIn,
      'openId': instance.openId,
      'unionId': instance.unionId,
      'jti': instance.jti
    };
