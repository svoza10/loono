import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginButton extends StatelessWidget {
  final String? icon;
  final String text;
  final Color color;
  final VoidCallback? callback;

  const LoginButton({
    Key? key,
    this.icon,
    this.text = '',
    this.color = Colors.black,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          border: Border.all(color: color),
        ),
        height: 65,
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: SvgPicture.asset(
                  "assets/icons/$icon",
                  width: 30,
                  height: 30,
                ),
              ),
            Text(text, style: TextStyle(color: color, fontSize: 14.0)),
          ],
        ),
      ),
    );
  }
}
