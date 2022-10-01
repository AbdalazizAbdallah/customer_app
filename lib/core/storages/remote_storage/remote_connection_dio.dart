import 'package:customer_app/core/constants/strings_app.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RemoteConnectionDio {
  late Dio _dio;

  static RemoteConnectionDio? _instance;

  RemoteConnectionDio._() {
    _dio = Dio(
      BaseOptions(
          baseUrl: dotenv.get(StringsApp.baseUrl),
          validateStatus: (_) => true,
          headers: {
            'Accept': 'application/json',
            'Authorization': '',
          }),
    );
// customization
    _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
  }

  factory RemoteConnectionDio() {
    return _instance ??= RemoteConnectionDio._();
  }

  @override
  Dio get dio => _dio;
}
