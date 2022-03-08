import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  BorderRadius borderradius = BorderRadius.circular(60);
  void Function()? onPressed;
  final String text;
  Color bottenColor = Colors.blue;
  Color textColor = Colors.white;
  AppButton(
    this.text, {
    required this.bottenColor,
    required this.textColor,
    required this.borderradius,
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: borderradius,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: bottenColor,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
          child: Text(
            text,
            style: TextStyle(fontSize: 25, color: textColor),
          ),
        ),
      ),
    );
  }
}
