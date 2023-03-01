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
          type:UiKitTextType.title1,
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
      width: double.maxFinite,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black38
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: UiKitText('Thurs\n03/03', type: UiKitTextType.subtitle1, color: Colors.white),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: data.items.map((e) => const UiKitItemForecast(type: UiKitItemForecastType.small)).toList(),
                ),
                Expanded(child: Container()),
              ],
            )
          )
        ],
      ),
    );
  }
}
