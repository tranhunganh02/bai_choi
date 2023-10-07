import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({
    super.key,
    required this.image,
    required this.press,
    required this.index
  });

  final String image;
  final Function press;
  final int index;

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  double imageSizeWidth = 100.0;
  double imageSizeHeight = 160.0;
  bool isImageExpanded = false;
 int selectedImageIndex = -1;
  void toggleImageSize() {
    setState(() {
      imageSizeWidth = isImageExpanded ? 100.0 : 170.0;
      imageSizeHeight = isImageExpanded ? 160.0 : 200.0;
      isImageExpanded = !isImageExpanded;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
         toggleImageSize();
      },
      child: AnimatedContainer(
        duration:const Duration(milliseconds: 900),
        curve: Curves.ease,
        width: imageSizeWidth,
        height: imageSizeHeight,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image:  AssetImage(widget.image))
          ),
          margin:const EdgeInsets.only(right: 10),
   
        )
      ),
    );
  }
}
