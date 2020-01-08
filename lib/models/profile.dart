import 'package:json_annotation/json_annotation.dart';
import "user.dart";
import "cacheConfig.dart";
part 'profile.g.dart';
@JsonSerializable()
class Profile {
    Profile();

    U user;
    String token;
    num theme;
    C cache;
    String lastLogin;
    String locale;
    
    factory Profile.fromJson(Map<String,dynamic> json) => _$ProfileFromJson(json);
    Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
