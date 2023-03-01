import 'package:flutter/material.dart';
import 'package:weather_app/ui/component/text.dart';

class UiKitItemForecast extends StatelessWidget {
  final UiKitItemForecastType? type;

  const UiKitItemForecast({Key? key, this.type = UiKitItemForecastType.medium }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textType = type == UiKitItemForecastType.small ? UiKitTextType.subtitle1
        : UiKitTextType.title2;
    final iconSize = type == UiKitItemForecastType.small ? 45.0 : 65.0;

    return Column(
      children: [
        UiKitText('00:00', type: textType, color: Colors.white),
        Image.network(
          'http://openweathermap.org/img/wn/10d@2x.png',
          width: iconSize,
          height: iconSize,
          fit: BoxFit.fill,
        ),
        UiKitText('Rainy', type: textType, color: Colors.white),
      ],
    );
  }
}

enum UiKitItemForecastType {
  small,
  medium
}
