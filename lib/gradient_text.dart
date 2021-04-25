import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    @required this.gradient,
    @required this.title,
    @required this.textAlign,
    @required this.fontSize,
    @required this.fontFamily,
    @required this.fontWeight,
    @required this.textDecoration,
    @required this.fontHeight,
  });

  final LinearGradient gradient;
  final String title;
  final TextAlign textAlign;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final TextDecoration textDecoration;
  final double fontHeight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return gradient.createShader(
            Offset.fromDirection(180) & bounds.size,
          );
        },
        child: Text(
          title,
          textAlign: textAlign,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            decoration: textDecoration,
            height: fontHeight,
          ),
        ),
      ),
    );
  }
}
