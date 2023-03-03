import 'package:flutter/material.dart';
import 'package:weather_app/domain/model/item_ui_model.dart';
import 'package:weather_app/ui/component/text.dart';

class UiKitItemForecast extends StatelessWidget {
  final UiKitItemForecastType? type;
  final ItemUiModel data;

  const UiKitItemForecast({Key? key, this.type = UiKitItemForecastType.medium, required this.data }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textType = type == UiKitItemForecastType.small ? UiKitTextType.subtitle1
        : UiKitTextType.title2;
    final iconSize = type == UiKitItemForecastType.small ? 45.0 : 65.0;

    return Column(
      children: [
        UiKitText(data.hour, type: textType, color: Colors.white),
        Image.network(
          data.iconUrl,
          width: iconSize,
          height: iconSize,
          fit: BoxFit.fill,
        ),
        UiKitText('${data.temp}°C', type: textType, color: Colors.white),
      ],
    );
  }
}

enum UiKitItemForecastType {
  small,
  medium
}
