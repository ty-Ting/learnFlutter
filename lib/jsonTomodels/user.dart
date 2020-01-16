import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';
@JsonSerializable()
class User {
    User();

    num id;
    String name;
    String weChatNumber;
    num authUserId;
    num customerId;
    List buildingIdList;
    String status;
    String role;
    List permissions;
    List modules;
    Map<String,dynamic> dataAccessLevel;
    String creatorId;
    String dateCreate;
    bool riskstorm;
    String email;
    String userTel;
    String invitedUrl;
    bool master;
    bool currency;
    List customRoles;
    String avatar;
    String authUserName;
    
    factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
    Map<String, dynamic> toJson() => _$UserToJson(this);
}