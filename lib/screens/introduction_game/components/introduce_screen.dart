import 'package:bai_choi/theme/color_theme.dart';
import 'package:flutter/material.dart';

Container IntroduceScreen(BuildContext context) {
  return Container(
    color: Theme.of(context).colorScheme.primary,
    child: Padding(
      padding: EdgeInsets.all(10),
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
              "Nghệ thuật Bài Chòi Trung Bộ của Việt Nam được UNESCO công nhận là di sản văn hóa phi vật thể đại diện của nhân loại từ năm 2017. Bài Chòi Trung bộ Việt Nam xuất hiện từ cách đây hàng trăm năm. Nguồn gốc của Bài Chòi được cho là bắt nguồn từ công cuộc khẩn hoang. Người dân khi ấy dựng chòi trên những khu đất rừng mới vỡ để canh chừng thú dữ, bảo vệ hoa màu. Trong chòi có để các nhạc cụ như mõ, canh, trống nhằm tạo tiếng động xua thú dữ. Và nghệ thuật bài chòi đã ra đời như một thú vui lúc nhàn rỗi của người dân ở đây. Ngày nay, Bài Chòi vẫn được thịnh hành ở các tỉnh thành khắp miền Trung từ Quảng Bình đến Bình Định.\n"),
          content(
              "Chơi Bài Chòi đơn giản là một kiểu ngồi trên chòi đánh bài. Nhưng không chỉ là một trò chơi mà Bài Chòi là cả một nghệ thuật diễn xướng hát / hô của các nghệ nhân chính trong vai trò \"anh hiệu\" (những người quản trò)."),
          Title(
              color: Theme.of(context).colorScheme.inversePrimary,
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: DefaultTextStyle(
                    style: TextStyle(
                        color: lightColorScheme.onSecondary,
                        fontSize: 22,
                        fontFamily: 'DelaGothicOne'),
                    child: const Text(
                      "Về trò chơi \n",
                      textAlign: TextAlign.center,
                    )),
              )),
          content(
              "Xin cảm ơn nghệ sỹ Huyền Tân và các nghệ sỹ trong CLB Bài chòi Sông Hàn đã hỗ trợ cố vấn. Trò chơi có sử dụng video của các cô chú để phục vụ trò chơi."),
          content(
              "Xin cảm ơn họa sĩ Tú Ngô - tác giả của \"Bài Chòi Hội An - Việt Nam\" vì đã cho phép chúng em sử dụng hình ảnh cho trò chơi.\n"),
        ],
      ),
    ),
  );
}

DefaultTextStyle content(String text) {
  return DefaultTextStyle(
    style: TextStyle(color: lightColorScheme.onPrimary, fontSize: 12, fontFamily: "DelaGothicOne"),
    child: Text(text),
  );
}
