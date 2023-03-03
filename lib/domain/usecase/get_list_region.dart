import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/failure.dart';
import 'package:weather_app/domain/model/region_ui_model.dart';
import 'package:weather_app/domain/repository/region_repository.dart';

class GetListRegion {
  final FieldRepository _repository;

  GetListRegion(this._repository);

  Future<Either<Failure, List<FieldUiModel>>> execute() {
    return _repository.getListRegion();
  }

}