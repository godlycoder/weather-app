import 'package:flutter/material.dart';
import 'package:weather_app/ui/component/text.dart';

class UiKitHeader extends StatelessWidget {
  const UiKitHeader({Key? key}) : super(key: key);

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
                      children: const [
                        UiKitText(
                            'Wed',
                            type: UiKitTextType.title1,
                            color: Colors.white
                        ),
                        UiKitText(
                            '02/03/23',
                            type: UiKitTextType.caption1,
                            color: Colors.white
                        ),
                      ],
                    ),
                    const Expanded(
                      child: Center(
                        child: UiKitText(
                            'Rainy',
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
                        '24'
                      ),
                      itemHeader(
                          Icons.speed,
                          'Pressure',
                          '24'
                      ),
                      itemHeader(
                          Icons.cloud,
                          'Cloudiness',
                          '24'
                      ),
                      itemHeader(
                          Icons.wind_power,
                          'Wind',
                          '24'
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
            Image.network(
              'http://openweathermap.org/img/wn/10d@2x.png',
              width: 150,
              height: 150,
              fit: BoxFit.fill,
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
