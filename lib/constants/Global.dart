import 'package:my_first_flutter/utils/cache_request.dart';
import 'package:my_first_flutter/utils/request.dart';

class Global {
  // static Profile profile = Profile();
  // 网络缓存对象
  static NetCache netCache = NetCache();
  static Map<String, String> _info;
  static saveInfo(info) {
    _info = info;
  }

  static Map<String, String> get info => _info;
  //初始化全局信息，会在APP启动时执行
  static Future init() async {
    //初始化网络请求相关配置
    Request.init();
  }
}
