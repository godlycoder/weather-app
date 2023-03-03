import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/failure.dart';
import 'package:weather_app/domain/model/region_ui_model.dart';

abstract class FieldRepository {
  Future<Either<Failure, List<FieldUiModel>>> getListRegion();

  Future<Either<Failure, List<FieldUiModel>>> getListCity(String id);
}