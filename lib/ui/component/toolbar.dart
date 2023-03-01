import 'package:flutter/material.dart';
import 'package:weather_app/ui/component/text.dart';

class UiKitToolbar extends AppBar {
  UiKitToolbar({super.key});

  @override
  Color? get backgroundColor => Colors.transparent;

  @override
  Color? get shadowColor => Colors.transparent;

  @override
  Widget? get title => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      UiKitText('Selamat Pagi Bani', type: UiKitTextType.header3),
      UiKitText('Bandung 23°C', type: UiKitTextType.caption1)
    ],
  );

  @override
  // TODO: implement centerTitle
  bool? get centerTitle => false;

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