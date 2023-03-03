import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/data/datasource/region/forecast_remote_data_source.dart';
import 'package:weather_app/data/extentions.dart';
import 'package:weather_app/domain/failure.dart';
import 'package:weather_app/domain/model/days_ui_model.dart';
import 'package:weather_app/domain/model/forcecast_ui_model.dart';
import 'package:weather_app/domain/model/item_ui_model.dart';
import 'package:weather_app/domain/repository/forecast_repository.dart';

class ForecastRepositoryImpl extends ForecastRepository {
  final ForecastRemoteDataSource _remoteDataSource;

  ForecastRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, ForecastUiModel>> getForecast(String query) async {
    try {
      final result = await _remoteDataSource.getForecast(query);
      final formatter = DateFormat("yyyy-MM-dd");

      final group = groupBy(result, (item) {
        final itemDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(item.dttxt ?? '');
        return formatter.format(itemDate);
      });

      var summaries = <ItemUiModel>[];
      var listForecast = <DaysUiModel>[];

      group.values.forEachIndexed((index, element) {
        if (index == 0) {
          summaries = element.map((e) => e.toUiModel()).toList();
        } else {
          final daySummaries = element.map((e) => e.toUiModel()).toList();
          final dayUiModel = DaysUiModel('${daySummaries[0].dayName}\n'
              '${daySummaries[0].date}', daySummaries);
          listForecast.add(dayUiModel);
        }
      });

      return Right(
        ForecastUiModel(
          summaries,
          listForecast
        )
      );
    } on Exception catch(e) {
      return Left(
          Failure(e.toString())
      );
    }
  }

}