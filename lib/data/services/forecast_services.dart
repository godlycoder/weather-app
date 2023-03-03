import 'package:dio/dio.dart';

class ForecastServices {
  final Dio _dio;

  ForecastServices(this._dio);

  Future<Response> getForecast(String query) {
    return _dio.get('/forecast', queryParameters: {
      'q': query
    });
  }
  
  
}