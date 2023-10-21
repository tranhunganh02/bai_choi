import 'package:flutter/material.dart';

import '../../../theme/color_theme.dart';
import 'introduce_screen.dart';

Container TutorialScreen(BuildContext context) {
  return Container(
    color: Theme.of(context).colorScheme.primary,
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Title(
              color: Theme.of(context).colorScheme.inversePrimary,
              child: DefaultTextStyle(
                  style: TextStyle(
                      color: lightColorScheme.onSecondary,
                      fontSize: 22,
                      fontFamily: 'DelaGothicOne'),
                  child: const Text(
                    "Giới thiệu về bài chòi \n",
                    textAlign: TextAlign.center,
                  ))),
          content(
              "Là ứng dụng offline 4 người chơi trên một máy ngồi xung quanh với nhau (tương tự như các chòi đặt xung quanh anh Hiệu).\n"),
          content(
              "Các lá bài trong game có 3 pho bài, mỗi pho 10 quân, tổng cộng 30 lá bài. \n"),
          content(
              "Sẽ có 2 mode chơi: mode chơi bình thường và mode chơi nhanh. Ở mode chơi bình thường: Anh Hiệu sẽ hò tối đa 9 quân bài.Sau khi hò xong, ai có số lượng bài quân trúng nhiều hơn sẽ dành chiến thắng, trong trường hợp 2 người có số lượng bài quân bằng nhau thì sẽ xử hòa. Ở mode chơi bình thường: Anh Hiệu sẽ hò cho đến khi tìm ra được người chiến thắng (trúng 3 quân bài)."),

        ],
      ),
    ),
  );
}
