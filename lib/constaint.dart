import 'package:flutter/material.dart';

class TextCustom extends StatefulWidget {
  const TextCustom(
      {super.key,
      required this.fontFamily,
      required this.content,
      required this.sizeText,
      required this.colorText});
  final String fontFamily;
  final String content;
  final double sizeText;
  final Color colorText;
  @override
  State<TextCustom> createState() => _TextCustomState();
}

class _TextCustomState extends State<TextCustom> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.content,
      style:
          TextStyle(fontFamily: widget.fontFamily, fontSize: widget.sizeText, color: widget.colorText),
    );
  }
}
