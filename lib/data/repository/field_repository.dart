import 'package:dartz/dartz.dart';
import 'package:weather_app/data/datasource/region/field_remote_data_source.dart';
import 'package:weather_app/data/extentions.dart';
import 'package:weather_app/domain/failure.dart';
import 'package:weather_app/domain/model/region_ui_model.dart';
import 'package:weather_app/domain/repository/region_repository.dart';

class FieldRepositoryImpl extends FieldRepository {
  final FieldRemoteDataSource _remoteDataSource;

  FieldRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, List<FieldUiModel>>> getListRegion() async {
    try {
      final result = await _remoteDataSource.getListRegion();

      return Right(
          result.map((e) => e.toUiModel()).toList()
      );
    } on Exception catch(e) {
      return Left(
          Failure(e.toString())
      );
    }
  }

  @override
  Future<Either<Failure, List<FieldUiModel>>> getListCity(String id) async {
    try {
      final result = await _remoteDataSource.getListCity(id);

      return Right(
          result.map((e) => e.toUiModel()).toList()
      );
    } on Exception catch(e) {
      return Left(
          Failure(e.toString())
      );
    }
  }

}