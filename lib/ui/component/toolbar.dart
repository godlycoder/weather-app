import 'package:flutter/material.dart';

class UiKitToolbar extends StatefulWidget implements PreferredSizeWidget{
  final Function onBackPress;

  const UiKitToolbar({Key? key, required this.onBackPress}) : super(key: key);

  @override
  State<UiKitToolbar> createState() => _UiKitToolbarState();

  @override
  Size get preferredSize => const Size.fromHeight(200);
}

class _UiKitToolbarState extends State<UiKitToolbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {

          },
          child: const Padding(
            padding: EdgeInsets.all(15),
            child: Icon(Icons.arrow_back),
          ),
        )
      ],
    );
  }
}
