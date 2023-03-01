import 'package:flutter/material.dart';
import 'package:weather_app/ui/component/text.dart';

class UiKitHeader extends StatelessWidget {
  const UiKitHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              UiKitText('Selamat Pagi', type: UiKitTextType.header2)
            ],
          )
        ),
        Expanded(
          child: Column(
            children: [],
          )
        )
      ],
    );
  }
}
