import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.bgColor})
      : super(key: key);

  final void Function() onPressed;
  final String title;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: bgColor,
          minimumSize: const Size.fromHeight(50),
          splashFactory: NoSplash.splashFactory,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(title)));
  }
}
