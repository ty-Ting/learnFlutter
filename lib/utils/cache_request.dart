import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:my_first_flutter/constants/Global.dart';

class CacheObject {
  CacheObject(this.response)
      : timeStamp = DateTime.now().millisecondsSinceEpoch;
  Response response;

  int timeStamp; // 缓存创建时间

  @override
  bool operator ==(other) {
    return response.hashCode == other.hashCode;
  }

  // 将请求uri作为缓存的key
  @override
  int get hashCode => response.realUri.hashCode;
}

class NetCache extends Interceptor {
  var cache = LinkedHashMap<String, CacheObject>();

  @override
  onRequest(RequestOptions options) async {
    if (options.extra['noCache'] != true &&
        options.method.toLowerCase() == 'get') {
      String key = options.extra['noCache'] ?? options.uri.toString();
      var ob = cache[key];
      if (ob != null) {
        if ((DateTime.now().millisecondsSinceEpoch - ob.timeStamp) / 1000 <
            3600) {
          return cache[key].response;
        } else {
          cache.remove(key);
        }
      }
    }
  }

  @override
  onError(DioError err) async {
    // 错误状态不缓存
    print('---------请求出错----------');
    print(err.toString());
    print('-----------end------------');
  }

  @override
  onResponse(Response response) async {
    // 如果启用缓存，返回结果保存到缓存
    if (Global.profile.cache.enable) {
      _saveCache(response);
    }
  }

  _saveCache(Response object) {
    RequestOptions options = object.request;
    if (options.extra['noCache'] != true &&
        options.method.toLowerCase() == "get") {
      // 最大缓存数100
      if (cache.length == Global.profile.cache.maxCount) {
        cache.remove(cache[cache.keys.first]);
      }
      String key = options.extra["cacheKey"] ?? options.uri.toString();
      cache[key] = CacheObject(object);
    }
  }

  void delete(String key) {
    cache.remove(key);
  }
}
