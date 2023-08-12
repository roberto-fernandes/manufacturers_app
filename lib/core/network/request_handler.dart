import 'package:dio/dio.dart';



class RequestHandler {
  static const String _baseUrl = 'https://vpic.nhtsa.dot.gov/api/';

  /// Private constructor
  RequestHandler._();

  /// Singleton instance
  static final RequestHandler _instance = RequestHandler._();

  //( Accessor to get the instance
  static RequestHandler get instance => _instance;

  final _dio = Dio(BaseOptions(
    baseUrl: _baseUrl,
    receiveTimeout: const Duration(milliseconds: 15000),
    connectTimeout: const Duration(milliseconds: 15000),
    sendTimeout: const Duration(milliseconds: 15000),
  ));

  Future<T> get<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
    required T Function(dynamic data, Headers? headers) mapper,
  }) async {
    final Response response = await _dio.get(
      path,
      queryParameters: queryParameters,
    );

    return mapper(response.data, response.headers);
  }
}
