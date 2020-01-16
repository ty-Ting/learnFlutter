import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';
@JsonSerializable()
class User {
    User();

    num authUserId;
    String openId;
    String unionId;
    String name;
    String username;
    String avatar;
    String email;
    String phoneNumber;
    List authorities;
    
    factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
    Map<String, dynamic> toJson() => _$UserToJson(this);
}