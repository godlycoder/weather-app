import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/failure.dart';
import 'package:weather_app/domain/model/forcecast_ui_model.dart';

abstract class ForecastRepository {
  Future<Either<Failure, ForecastUiModel>> getForecast(String query);
}