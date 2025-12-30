import 'package:flutter/widgets.dart';
import 'package:vize/vize.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    this.color,
    this.fontWeight,
    this.letterSpacing,
    this.wordSpacing,
    this.height,
    this.overflow,
    this.textAlign,
  });

  final String text;
  final bool inherit = true;
  final Color? color;
  final double fontSize;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final double? wordSpacing;
  final double? height;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: fontSize.ts,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: height,

        inherit: inherit,
        wordSpacing: wordSpacing,
      ),
    );
  }
}
