import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/failure.dart';
import 'package:weather_app/domain/model/forcecast_ui_model.dart';
import 'package:weather_app/domain/repository/forecast_repository.dart';

class GetForecast {
  final ForecastRepository _repository;

  GetForecast(this._repository);

  Future<Either<Failure, ForecastUiModel>> execute(String query) {
    return _repository.getForecast(query);
  }

}