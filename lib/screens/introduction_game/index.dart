import 'package:bai_choi/theme/color_theme.dart';
import 'package:flutter/material.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
            color: Theme.of(context).colorScheme.primary,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(children: [
             Stack(children: [
              Align(
      alignment: Alignment.topLeft,
      child: FloatingActionButton(onPressed: (){}, child: Icon(Icons.arrow_back),),
    ),
    Align(
      alignment: Alignment.topRight,
      child: FloatingActionButton(onPressed: (){}, child: Icon(Icons.more_horiz)),
    ),
             ],),
            Title(color: Theme.of(context).colorScheme.inversePrimary, child: DefaultTextStyle(style: TextStyle(color: lightColorScheme.onSecondary, fontSize: 22),
            child:const Text("Giới thiệu về bài chòi \n",  textAlign: TextAlign.center,))),
            content("Bài chòi là một loại hình nghệ thuật dân ca và trò chơi dân gian đặc trưng ở miền Trung Việt Nam, về sau đã được phát triển thành một loại hình sân khấu ca kịch. Năm 2003, UNESCO đã công nhận Nghệ thuật Bài chòi Trung Bộ từ Việt Nam là di sản văn hoá phi vật thể của nhân loại. \n"),
            content(
                "Bài chòi phổ biến và là món ăn tinh thần không thể thiếu đối với nhân dân lao động. Vào mỗi dịp lễ Tết, ở vùng nông thôn rất phổ biến trò chơi này. Có thể nói hô hát bài chòi đầu xuân là một trong những nét văn hoá truyền thống dân gian độc đáo, riêng biệt và mang tính đặc trưng của vùng đất con người Đà Nẵng."),
          ]),
        ),
      ),
    );
  }

  DefaultTextStyle content(String text) {
    return DefaultTextStyle(style: TextStyle(color: lightColorScheme.onPrimary, fontSize: 18),child: Text(text),);
  }
}
