import 'package:dio/dio.dart';

class FieldServices {

  final Dio _dio;

  FieldServices(this._dio);

  Future<Response> fetchAllRegion() {
    return _dio.get('/provinsi.json');
  }

  Future<Response> fetchAllCity(String id) {
    return _dio.get('/kabupaten/$id.json');
  }
  
  
}