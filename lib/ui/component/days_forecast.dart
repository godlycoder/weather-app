import 'package:flutter/material.dart';
import 'package:weather_app/domain/model/days_ui_model.dart';
import 'package:weather_app/ui/component/item_forecast.dart';
import 'package:weather_app/ui/component/text.dart';

class UiKitDaysForecast extends StatelessWidget {
  final List<DaysUiModel> data;

  const UiKitDaysForecast({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const UiKitText(
          '5 Days Forecast',
          type:UiKitTextType.header2,
          color: Colors.white
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: itemDays(data[index]),
            );
          }
        )
      ],
    );
  }

  Widget itemDays(DaysUiModel data) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: double.maxFinite,
      height: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black38
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: UiKitText(data.date, type: UiKitTextType.subtitle1, color: Colors.white),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.items.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: UiKitItemForecast(
                      type: UiKitItemForecastType.small,
                      data: data.items[index]
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
