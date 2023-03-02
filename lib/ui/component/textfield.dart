import 'package:flutter/material.dart';

class UiKitTextField extends StatelessWidget {
  const UiKitTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black38,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: 'Hint'
      ),
    );
  }
}
