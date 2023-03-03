import 'package:flutter/material.dart';
import 'package:weather_app/domain/model/item_ui_model.dart';
import 'package:weather_app/ui/component/text.dart';

class UiKitHeader extends StatelessWidget {
  final ItemUiModel? model;
  const UiKitHeader({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 75, top: 20),
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black38
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UiKitText(
                            model?.dayName.toUpperCase() ?? '',
                            type: UiKitTextType.title1,
                            color: Colors.white
                        ),
                        UiKitText(
                            model?.date ?? '',
                            type: UiKitTextType.caption1,
                            color: Colors.white
                        ),
                      ],
                    ),
                    Expanded(
                      child: Center(
                        child: UiKitText(
                            model?.typeCast ?? '',
                            type: UiKitTextType.specialCaption,
                            color: Colors.white
                        ),
                      )
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      itemHeader(
                        Icons.water_drop,
                        'Humidity',
                        model?.humidity ?? ''
                      ),
                      itemHeader(
                          Icons.speed,
                          'Pressure',
                          model?.pressure ?? ''
                      ),
                      itemHeader(
                          Icons.cloud,
                          'Cloudiness',
                          model?.cloud ?? ''
                      ),
                      itemHeader(
                          Icons.wind_power,
                          'Wind',
                          model?.wind ?? ''
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container()),
            Visibility(
              visible: model?.iconUrl != null,
              child: Image.network(
                model?.iconUrl ?? '',
                width: 150,
                height: 150,
                fit: BoxFit.fill,
              )
            )
          ],
        )
      ],
    );
  }

  itemHeader(IconData assets, String title, String value) => Column(
    children: [
      Icon(assets, color: Colors.white, size: 15),
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: UiKitText(value, type: UiKitTextType.title3, color: Colors.white),
      ),
      UiKitText(title, type: UiKitTextType.caption3, color: Colors.white)
    ],
  );
}
