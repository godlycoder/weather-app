import 'package:intl/intl.dart';
import 'package:weather_app/data/model/field/field_dto.dart';
import 'package:weather_app/data/model/weather/forecast_dto.dart';
import 'package:weather_app/domain/model/item_ui_model.dart';
import 'package:weather_app/domain/model/region_ui_model.dart';

extension FieldDTOMapper on FieldDTO {
  FieldUiModel toUiModel() {
    return FieldUiModel(id, name);
  }
}

extension ItemDTOMapper on ItemDTO {

  ItemUiModel toUiModel() {

    final formatter = DateFormat('EEE MM/dd HH:mm');
    final convFormatter = DateFormat("yyyy-MM-dd HH:mm:ss");
    final date = convFormatter.parse(dttxt ?? '');
    final dateString = formatter.format(date);

    final splitDateString = dateString.split(' ');

    return ItemUiModel(
      splitDateString[0],
      splitDateString[1],
      splitDateString[2],
      weather?[0]?.main ?? '',
      main?.humidity.toString() ?? '',
      main?.pressure.toString() ?? '',
      clouds?.all.toString() ?? '',
      wind?.speed.toString() ?? '',
      'http://openweathermap.org/img/wn/${weather?[0]?.icon}@2x.png',
      ((main?.temp ?? 0) - 273.15).round().toString()
    );
  }
}