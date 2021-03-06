import 'package:flutter/material.dart';
import '../values/values.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    this.title,
    this.onPressed,
//    this.width = Sizes.WIDTH_150,
    this.height = 50,
    this.elevation = 1,
    this.borderRadius = 24,
    this.color = AppColors.buttonColor,
    this.borderSide = const BorderSide(width: 0, style: BorderStyle.none),
    this.textStyle,
    this.icon,
    this.hasIcon = false,
  });

  final VoidCallback onPressed;
//  final double width;
  final double height;
  final double elevation;
  final double borderRadius;
  final String title;
  final Color color;
  final BorderSide borderSide;
  final TextStyle textStyle;
  final Widget icon;
  final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      elevation: elevation,
//      minWidth: width ?? MediaQuery.of(context).size.width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderSide,
      ),

      height: height,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          hasIcon ? icon : Container(),
          hasIcon ? const SizedBox(height: 8.0) : Container(),
          title != null
              ? Text(
                  title,
                  style: textStyle,
                )
              : Container(),
        ],
      ),
    );
  }
}
