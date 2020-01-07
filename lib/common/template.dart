/*
 * @Author: tanyanting
 * @Date: 2020-01-07 14:31:13
 * @Last Modified by: tanyanting
 * @Last Modified time: 2020-01-07 16:40:57
 */
import 'package:json_annotation/json_annotation.dart';
%t
part '%s.g.dart';
@JsonSerializable()
class %s {
  %s();

  %s
  factor %s.fromJson(Map<String,dynamic> json) => _$%sFromJson(json);
  Map<String, dynamic> toJson() => _$%sToJSon(this);
}
