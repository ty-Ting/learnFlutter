/*
 * @Author: tanyanting
 * @Date: 2020-01-08 14:16:03
 * @Last Modified by: tanyanting
 * @Last Modified time: 2020-01-08 17:26:41
 */

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_first_flutter/models/cacheConfig.dart';
import 'package:my_first_flutter/models/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Git.dart';
import 'NetCache.dart';

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red
];

class Global {
  static SharedPreferences _prefs;
  static Profile profile = Profile();
  // 网络缓存对象
  static NetCache netCache = NetCache();

  // 可选的主题列表
  static List<MaterialColor> get themes => _themes;

  // 是否为release版
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  // 初始化全局信息，在app启东时执行
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
    var _profile = _prefs.getString("profile");
    if (_profile != null) {
      try {
        profile = Profile.fromJson(jsonDecode(_profile));
      } catch (e) {
        print(e);
      }
    }
    // 如果没有缓存策略，设置默认缓存策略
    profile.cache = profile.cache ?? CacheConfig()
      ..enable = true
      ..maxAge = 3600
      ..maxCount = 100;

    // 初始化网络请求相关配置
    Git.init();
  }

  // 持久化Profile信息
  static saveProfile() =>
      _prefs.setString("profile", jsonEncode(profile.toJson()));

  static NetCache() {}
}
