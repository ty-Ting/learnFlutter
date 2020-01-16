import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/constants/Global.dart';

class Request {
  Request([this.context]) {
    _options = Options(extra: {"context": context});
  }

  BuildContext context;
  Options _options;
  static Dio dio =
      new Dio(BaseOptions(baseUrl: 'https://staging-api.creams.io/'));

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
  if (!noToken) {
    dio.options.headers[HttpHeaders.authorizationHeader] =
        Global.info != null ?? Global.info['accessToken'];
  }
  Response response = await dio.get(url);
  return response.data;
}
