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
                    "Cách chơi \n",
                    textAlign: TextAlign.center,
                  ))),
          content(
              "Là ứng dụng offline 4 người chơi trên một máy ngồi xung quanh với nhau (tương tự như các chòi đặt xung quanh anh Hiệu).\n"),
          content("Các lá bài trong game có 3 pho bài, mỗi pho 10 quân, tổng cộng 30 lá bài. Trước khi bắt đầu, nếu người chơi là lần đầu tham gia, người chơi sẽ nhập tên cho 4 người hoặc chọn tên mặc định. Nếu đã từng chơi, tên người dùng đã lưu từ lần chơi cuối sẽ được sử dụng. Người dùng có thể thay đổi tên ở phần cài đặt ngoài Main Menu.\n"),
          content("Sau khi nhập tên, người chơi sẽ vào phần chọn mode chơi. Sẽ có hai mode chơi: mode chơi bình thường và mode chơi nhanh. Ở mode chơi nhanh: ứng dụng phát ngẫu nhiên tối đa 9 câu hô thai của anh Hiệu, chị Hiệu, người chơi có số lượng lá bài trúng nhiều hơn sẽ dành chiến thắng, trong trường hợp 2 người có số lượng lá bài trúng bài bằng nhau thì sẽ xử hòa. Ở mode chơi bình thường: ứng dụng phát ngẫu nhiên câu hô của anh Hiệu, chị Hiệu cho đến khi tìm ra được người chiến thắng là người chơi trúng 3 quân bài. \nVào lượt chơi, mỗi người sẽ được phát ngẫu nhiên 3 lá bài, mỗi lá từ một pho khác nhau. Lượt chơi sẽ bắt đầu phát đoạn intro, đoạn này từ 10-15s tạo sự hào hứng cho người chơi.\n\n Với sự cho phép của nghệ sỹ Huyền Tân và các nghệ sỹ tròn câu lạc bộ bài chòi Sông Hàn, chúng em sử dụng các video hô hát bài chòi trên kênh youtube Huyền Tân Bài Chòi, random ngẫu nhiên các câu hô thai, nếu câu hô thai nào trúng với lá bài người chơi đang có thì người chơi được nhận một cờ xanh, nếu người chơi đủ 3 cờ xanh là người chiến thắng và kết thúc lượt chơi. Ngoài ra, người dùng còn có thể tìm hiểu thêm về nguồn gốc ra đời của bài chòi, tìm hiểu về 30 lá bài và các câu hô thai tương ứng. mỗi bài sẽ kèm theo một nút skip để người chơi có thể tua về gần cuối video, lúc anh Hiệu, chị Hiệu đọc tên lá bài. "),
        ],
      ),
    ),
  );
}
