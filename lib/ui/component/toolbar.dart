import 'package:flutter/material.dart';
import 'package:weather_app/ui/component/text.dart';
import 'package:weather_app/ui/view_extentions.dart';

class UiKitToolbar extends AppBar {
  final String name;
  final String city;
  final String? temp;
  final Function() onRefresh;

  UiKitToolbar({required this.name, required this.city, this.temp, required this.onRefresh, super.key});

  @override
  Color? get backgroundColor => Colors.transparent;

  @override
  Color? get shadowColor => Colors.transparent;

  @override
  Widget? get title => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      UiKitText('Selamat ${currentGreeting()} $name', type: UiKitTextType.header3),
      UiKitText('$city $temp°C', type: UiKitTextType.caption1)
    ],
  );

  @override
  // TODO: implement centerTitle
  bool? get centerTitle => false;

  @override
  List<Widget>? get actions => [
    InkWell(
      onTap: onRefresh,
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Icon(Icons.refresh, size: 40),
      ),
    )
  ];

}