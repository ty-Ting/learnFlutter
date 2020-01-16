import 'dart:convert';

import 'package:my_first_flutter/jsonTomodels/cacheConfig.dart';
import 'package:my_first_flutter/jsonTomodels/profile.dart';
import 'package:my_first_flutter/utils/cache_request.dart';
import 'package:my_first_flutter/utils/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Global {
  static SharedPreferences _prefs;
  static Profile profile = Profile();
  // 网络缓存对象
  static NetCache netCache = NetCache();
  static Map<String, String> _info;
  static saveInfo(info) {
    _info = info;
  }

  static Map<String, String> get info => _info;
  //初始化全局信息，会在APP启动时执行
  static Future init() async {
    // !记住密码类似功能，报错未解决
    // _prefs = await SharedPreferences.getInstance();
    // var _profile = _prefs.getString("profile");
    // if (_profile != null) {
    //   try {
    //     profile = Profile.fromJson(jsonDecode(_profile));
    //   } catch (e) {
    //     print(e);
    //   }
    // }

    // 如果没有缓存策略，设置默认缓存策略
    profile.cache = profile.cache ?? CacheConfig()
      ..enable = true
      ..maxAge = 3600
      ..maxCount = 100;
    //初始化网络请求相关配置
    Request.init();
  }

  // 持久化Profile信息
  static saveProfile() =>
      _prefs.setString("profile", jsonEncode(profile.toJson()));
}
