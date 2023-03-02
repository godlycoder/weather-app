import 'package:flutter/material.dart';
import 'package:weather_app/ui/component/text.dart';
import 'package:weather_app/ui/component/textfield.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
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
          body: Column(
            children: [
              const Expanded(
                  child: Center(
                    child: UiKitText(
                      'Weather App',
                      type: UiKitTextType.header1,
                      color: Colors.white
                    ),
                  )
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      padding: const EdgeInsets.all(30),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: ListView(
                        children: const [
                          UiKitTextField(),
                        ],
                      )
                  ),
                )
              ),
              Expanded(child: Container())
            ],
          ),
        )
      ],
    );
  }
}
