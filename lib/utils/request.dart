import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/constants/Global.dart';

class Request {
  // 在网络请求过程中可能会需要使用当前的context信息，比如在请求失败时
  // 打开一个新路由，而打开新路由需要context信息。
  Request([this.context]) {
    _options = Options(extra: {"context": context});
  }

  BuildContext context;
  Options _options;
  static Dio dio = new Dio(BaseOptions());

  static void init() {
    // 添加缓存插
    dio.interceptors.add(Global.netCache);
    // 设置header
    // dio.options.headers[HttpHeaders.authorizationHeader] = Global.info.token;
  }
}

// 请求方法enum
enum FetchMethod { GET, POST, PUT, DELETE }

dynamic fetch(String url,
    {FetchMethod type = FetchMethod.GET, bool noToken = false}) async {
  var dio = Request.dio;
  if (!noToken && Global.info != null) {
    print("${Global.info['tokenType']} ${Global.info['accessToken']}");
    dio.options.headers[HttpHeaders.authorizationHeader] =
        "${Global.info['tokenType']} ${Global.info['accessToken']}";
  }
  Response response = await dio.get(url);
  return response.data;
}
