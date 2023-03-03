import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

class UiKitDropDown extends StatelessWidget {
  final String hint;
  final SingleValueDropDownController? controller;
  final List<DropDownValueModel>? data;
  final Function(dynamic)? onChanged;

  const UiKitDropDown({Key? key, required this.hint, this.controller, this.data, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropDownTextField(
      controller: controller,
      enableSearch: true,
      textFieldDecoration: InputDecoration(
        filled: true,
        fillColor: Colors.black38,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: hint
      ),
      dropDownList: data ?? [],
      onChanged: onChanged,
    );
  }
}
