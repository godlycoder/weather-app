import 'package:flutter/material.dart';
import 'package:weather_app/ui/component/text.dart';

class UiKitToolbar extends AppBar {
  UiKitToolbar({super.key});

  @override
  Color? get backgroundColor => Colors.transparent;

  @override
  Color? get shadowColor => Colors.transparent;

  @override
  Widget? get title => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Icon(Icons.location_on_outlined, size: 25),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            UiKitText('Bandung', type: UiKitTextType.header2),
            UiKitText('Thursday, 16 Mei 2022', type: UiKitTextType.caption1)
          ],
        ),
      )
    ],
  );

  @override
  List<Widget>? get actions => [
    InkWell(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Icon(Icons.refresh, size: 40),
      ),
    )
  ];

}