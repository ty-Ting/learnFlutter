// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..id = json['id'] as num
    ..name = json['name'] as String
    ..weChatNumber = json['weChatNumber'] as String
    ..authUserId = json['authUserId'] as num
    ..customerId = json['customerId'] as num
    ..buildingIdList = json['buildingIdList'] as List
    ..status = json['status'] as String
    ..role = json['role'] as String
    ..permissions = json['permissions'] as List
    ..modules = json['modules'] as List
    ..dataAccessLevel = json['dataAccessLevel'] as Map<String, dynamic>
    ..creatorId = json['creatorId'] as String
    ..dateCreate = json['dateCreate'] as String
    ..riskstorm = json['riskstorm'] as bool
    ..email = json['email'] as String
    ..userTel = json['userTel'] as String
    ..invitedUrl = json['invitedUrl'] as String
    ..master = json['master'] as bool
    ..currency = json['currency'] as bool
    ..customRoles = json['customRoles'] as List
    ..avatar = json['avatar'] as String
    ..authUserName = json['authUserName'] as String;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weChatNumber': instance.weChatNumber,
      'authUserId': instance.authUserId,
      'customerId': instance.customerId,
      'buildingIdList': instance.buildingIdList,
      'status': instance.status,
      'role': instance.role,
      'permissions': instance.permissions,
      'modules': instance.modules,
      'dataAccessLevel': instance.dataAccessLevel,
      'creatorId': instance.creatorId,
      'dateCreate': instance.dateCreate,
      'riskstorm': instance.riskstorm,
      'email': instance.email,
      'userTel': instance.userTel,
      'invitedUrl': instance.invitedUrl,
      'master': instance.master,
      'currency': instance.currency,
      'customRoles': instance.customRoles,
      'avatar': instance.avatar,
      'authUserName': instance.authUserName
    };
