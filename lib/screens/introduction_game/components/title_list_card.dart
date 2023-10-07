import 'package:flutter/material.dart';
class TitleListCard extends StatelessWidget {
  final String title;
  const TitleListCard({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style:const TextStyle(fontSize: 20, fontFamily: "Aviano"),
    );
  }
}