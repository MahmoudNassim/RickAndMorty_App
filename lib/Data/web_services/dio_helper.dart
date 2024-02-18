import 'package:dio/dio.dart';
import 'package:flutter_rickandmorty/constants/strings.dart';

class DioHelper {
  static Dio? dio;
  static webServices() {
    BaseOptions options = BaseOptions(
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        baseUrl: baseUrl);
    dio = Dio(options);
  }

  static Future<Response> getData({required String url}) async {
    return await dio!.get(url);
  }
}
