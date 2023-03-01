import 'package:flutter/material.dart';
import 'package:weather_app/ui/component/header.dart';
import 'package:weather_app/ui/component/toolbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
              image: const ExactAssetImage(
                  'assets/clouds-background.jpg'
              ),
              fit: BoxFit.fill
            )
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: UiKitToolbar(),
          body: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.all(20),
                child: UiKitHeader(),
              )
            ],
          ),
        )
      ],
    );
  }
}
