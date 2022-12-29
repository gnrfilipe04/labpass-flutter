import 'package:flutter/material.dart';
import 'package:labpass/app/theme/colors.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.bgColor,
      this.icon})
      : super(key: key);

  final void Function() onPressed;
  final String title;
  final Color bgColor;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return _iconButton();
  }

  _iconButton() {
    return Stack(
      children: [
        _button(),
        icon != null
            ? Positioned(
                left: 8,
                bottom: 0,
                top: 0,
                child: IgnorePointer(
                  ignoring: true,
                  child: icon,
                ))
            : Container()
      ],
    );
  }

  _button() {
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
