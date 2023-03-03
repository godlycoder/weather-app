import 'package:weather_app/domain/model/days_ui_model.dart';
import 'package:weather_app/domain/model/item_ui_model.dart';

class ForecastUiModel {
  final List<ItemUiModel> summaries;
  final List<DaysUiModel> daysForecast;

  ForecastUiModel(this.summaries, this.daysForecast);
}