import 'package:weather_app/domain/model/item_ui_model.dart';

class DaysUiModel {
  final String date;
  final List<ItemUiModel> items;

  DaysUiModel(this.date, this.items);
}