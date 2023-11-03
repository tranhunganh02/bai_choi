import 'package:flutter/material.dart';

import '../../../theme/color_theme.dart';
import 'introduce_screen.dart';

Container TutorialScreen(BuildContext context) {
  return Container(
    color: Color(0xFFB22A21),
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
                    "Cách chơi \n",
                    textAlign: TextAlign.center,
                  ))),
          content("Nhập tên người chơi, nếu người dùng không nhập sẽ không được vào game"),
          content("Chọn mode chơi : \n \t -Mode chơi nhanh : Người chơi sẽ chơi ở chế độ tổng 9 lá \n \t -Mode chơi bình thường: Người chơi sẽ chơi ở chế độ tổng 30 lá"),
          content("Các lá bài trong game có 3 pho bài, mỗi pho 10 quân, tổng cộng 30 lá bài. \n -Tuỳ vào mode chơi sẽ có tổng số câu hò khác nhau. \n- Sau mỗi câu hò sẽ hiển thị 1 lá bài, người chơi có lá trùng với lá bài đó sẽ được hiển thị 1 ngôi sao. \n Người chơi nào có 3 ngôi sao trước hoặc kết thúc game có nhiều ngôi sao nhất là người chiến thắng"),
          content("Người chiến thắng sẽ nhận được phần thưởng là các vật phẩm trong bộ sưu tập")
          ],
      ),
    ),
  );
}
