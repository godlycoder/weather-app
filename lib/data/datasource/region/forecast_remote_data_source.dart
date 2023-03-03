import 'package:weather_app/data/model/weather/forecast_dto.dart';
import 'package:weather_app/data/services/forecast_services.dart';

abstract class ForecastRemoteDataSource {
  Future<List<ItemDTO>> getForecast(String query);
  
}

class ForecastRemoteDataSourceImpl extends ForecastRemoteDataSource {

  final ForecastServices _service;

  ForecastRemoteDataSourceImpl(this._service);

  @override
  Future<List<ItemDTO>> getForecast(String query) async {
    final response = await _service.getForecast(query);
    final result = response.data['list'] as List;

    return result.map((e) => ItemDTO.fromJson(e)).toList();
  }

}