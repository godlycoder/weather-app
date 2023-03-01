import 'package:flutter/material.dart';
import 'package:weather_app/domain/model/item_ui_model.dart';
import 'package:weather_app/ui/component/item_forecast.dart';

class UiKitForecastSummary extends StatelessWidget {
  final List<ItemUiModel> data;

  const UiKitForecastSummary({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 10),
              child: itemForecast(data[index]),
            );
          }
      ),
    );
  }

  Widget itemForecast(ItemUiModel data) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black38
      ),
      child: const UiKitItemForecast(),
    );
  }
}
