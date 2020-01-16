import 'package:json_annotation/json_annotation.dart';
import "user.dart";
import "cacheConfig.dart";
part 'profile.g.dart';
@JsonSerializable()
class Profile {
    Profile();

    User user;
    String accessToken;
    num tokenType;
    CacheConfig cache;
    String state;
    String expiresIn;
    String openId;
    String unionId;
    String jti;
    
    factory Profile.fromJson(Map<String,dynamic> json) => _$ProfileFromJson(json);
    Map<String, dynamic> toJson() => _$ProfileToJson(this);
}