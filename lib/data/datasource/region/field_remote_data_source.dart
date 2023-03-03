import 'package:weather_app/data/model/field/field_dto.dart';
import 'package:weather_app/data/services/field_services.dart';

abstract class FieldRemoteDataSource {
  Future<List<FieldDTO>> getListRegion();

  Future<List<FieldDTO>> getListCity(String id);
}

class FieldRemoteDataSourceImpl extends FieldRemoteDataSource {

  final FieldServices _services;

  FieldRemoteDataSourceImpl(this._services);

  @override
  Future<List<FieldDTO>> getListRegion() async {
    final response = await _services.fetchAllRegion();
    final result = response.data as List;

    return result.map((e) => FieldDTO.fromJson(e)).toList();
  }

  @override
  Future<List<FieldDTO>> getListCity(String id) async {
    final response = await _services.fetchAllCity(id);
    final result = response.data as List;

    return result.map((e) => FieldDTO.fromJson(e)).toList();
  }

}