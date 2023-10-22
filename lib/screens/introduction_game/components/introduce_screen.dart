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
              "Ngày 7/12/2017, tại phiên họp Ủy ban liên Chính phủ Công ước 2003 về bảo vệ di sản văn hóa phi vật thể lần thứ 12 của Tổ chức Giáo dục, Khoa học và Văn hóa của LHQ (UNESCO) diễn ra tại Hàn Quốc và “Nghệ thuật Bài Chòi Trung bộ Việt Nam” đã được UNESCO ghi danh trong danh sách “Di sản Văn hóa phi vật thể đại diện của nhân loại”. Đây được xem là niềm vui to lớn đôi với nhân dân các tỉnh Trung Bộ nói riêng, cũng như nhân dân cả nước nói chung."),
          content(
              "Bài chòi là một loại hình dân ca và trò chơi dân gian đặc trưng ở miền Trung Việt Nam, về sau đã được phát triển thành một loại hình sân khấu ca kịch. Bài chòi là di sản văn hóa của miền Trung mà nhân dân ở miền đất này đã nuôi dưỡng nó, bảo vệ nó từ xa xưa cho đến hôm nay, đây được xem là nghệ thuật mang rõ nét dân gian đặc sắc nhất, không lai tạp trong âm nhạc, trong ca hát và trong diễn xuất, là sản phẩm tinh thần hồn nhiên được sinh ra từ những con người hồn nhiên, chất phát, nó do chính người lao động ở nông thôn sáng tạo ra, và nó đã trở thành món ăn tinh thần không thể thiếu của họ."),
          Title(
              color: Theme.of(context).colorScheme.inversePrimary,
              child: DefaultTextStyle(
                  style: TextStyle(
                      color: lightColorScheme.onSecondary,
                      fontSize: 19,
                      fontFamily: 'DelaGothicOne'),
                  child: const Text(
                    " Nguồn gốc xuất xứ Bài Chòi \n",
                    textAlign: TextAlign.left,
                  ))),

          content("Hội Bài Chòi là một trong những tổ chức vui xuân của nhân dân, xuất xứ từ Bình Định rồi sau mới lan các tỉnh lân cận như Quảng Ngãi, Quảng Nam và vào đến Phú Yên, Khánh Hòa, Bình Thuận. Có thể nói nguồn gốc, thời gian xuất hiện chính xác của Bài Chòi đang là những câu hỏi còn gây nhiều tranh cãi.\n"),
          content("Theo lời cụ Phan Đình Lang[ Tức Bốn Trang, còn gọi là Bốn Que, một lão nghệ nhân Bài Chòi, sinh năm 1910, ở xã Nhơn Thành, huyện An Nhơn, tỉnh Bình Định] thì chính cụ đã từng nghe ông nội, ông thân cụ và cùng nhiều người khác kể lại là hội Bài Chòi là do ông Đào Duy Từ (1571-1634) sáng lập, ông Đào Duy Từ từ Bắc vào đến Bình Định thì lại lo việc di dân lập ấp. Trong thời kỳ đầu, việc khai khẩn đất hoang được coi là việc chủ yếu. Trên từng khu đất mới vỡ và bắt đầu sản xuất, người ta phải cất những cái Chòi cao làm bằng tranh, bằng tre để canh giữ thú rừng, bảo vệ hoa màu. Trên mỗi Chòi đều có mõ, thanh la, trống hoặc các thứ để gây tiếng động, để mỗi khi có thú rừng kéo đến phá hoại hoa màu hay uy hiếp người canh giữ thì lập tức các thứ dùng để làm thanh viện đó đồng khua ầm lên để xua đuổi thú dữ. Từ việc tổ chức các Chòi canh để bảo vệ sản xuất, đến việc các nghệ nhân mượn cuộc chơi bài tứ sắc vận vào câu hô, ông Đào Duy Từ mới nghĩ ra một trò chơi trong dịp Tết: Hội Bài Chòi.\n"),
          content("Theo đề tài nghiên cứu cấp Bộ về “Bảo tồn và phát huy các giá trị của nghệ thuật Bài Chòi trong đời sống hôm nay (11/12/2014) của GS. Hoàng Chương cho rằng “Trò chơi nghệ thuật độc đáo này ra đời khoảng cuối TK19 đầu TK20 và tồn tại cho đến hôm nay, chỉ gián đoạn trong thời chiến tranh chống Pháp và chống Mỹ, nhưng lại chuyển sang hình thức hô, hát Bài chòi rất phổ biến trong nhân dân và trong quân đội...” \n"),
          content("Nhìn lại chặng đường lịch sử Bài Chòi, có thể chia ra làm bốn giai đoạn:"),
          content("Giai đoạn thứ nhất: điệu hát sinh ra từ hội chòi và hoạt động phục vụ hội chòi để  phát triển và hoàn chỉnh thành điệu Bài Chòi."),
          content("Giai đoạn thứ hai: Bài Chòi vượt ra ngoài phạm vi hội chòi biểu diễn trên “sân khấu trải chiếu” dẫn đến sự kiện “từ đất lên giàn” và các gánh bài chòi nổi lên hoạt động mạnh mẽ cho đến Cách mạng Tháng Tám"),
          content("Giai đoạn thứ ba: Bài Chòi phục vụ đắc lực cho công cuộc kháng chiến chống Pháp của nhân dân khu Nam"),
          content("Giai đoạn thứ tư: Bài Chòi được xây dựng thành một bộ môn nghệ thuật ca kịch dân tộc hiện đại."),
          
           Title(
              color: Theme.of(context).colorScheme.inversePrimary,
              child: DefaultTextStyle(
                  style: TextStyle(
                      color: lightColorScheme.onSecondary,
                      fontSize: 19,
                      fontFamily: 'DelaGothicOne'),
                  child: const Text(
                    " Sự ra đời của làn điệu Bài Chòi \n",
                    textAlign: TextAlign.left,
                  ))),
          
          content("Làn điệu Bài Chòi được viết ra trên 4 âm điệu Bài Chòi cơ bản là: Xuân nữ, Xàng xê, Nam Xuân (Cổ bản), Hồ quảng. Về lời văn thì theo các thể thơ: lục bát, song thất lục bát, lục bát biến thể, thơ tứ ngôn, ngũ ngôn, thất ngôn tứ tuyệt, biền văn (văn biền ngẫu) và văn vần chiếm ưu thế tuyệt đối."),
          content("Bài Chòi thuộc thể loại âm nhạc kể chuyện, khúc thức tự do, không cố định. Bài chòi mang một loại hình tiết tấu riêng biệt, không giống với loại hình nghệ thuật nào khác. Cùng một đoạn nhạc Bài Chòi có nội dung và làn điệu như nhau, nhưng giữa người này và người kia có cách nghiên cứu khác nhau cũng sẽ dẫn tới nhiều cách hát, và đây chính là nét đặc trưng của Bài chòi với phong cách kể diễn."),

          Title(
              color: Theme.of(context).colorScheme.inversePrimary,
              child: DefaultTextStyle(
                  style: TextStyle(
                      color: lightColorScheme.onSecondary,
                      fontSize: 19,
                      fontFamily: 'DelaGothicOne'),
                  child: const Text(
                    "Về bản quyền hình ảnh và video \n",
                    textAlign: TextAlign.left,
                  ))),
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
    child: Text("$text\n"),
  );
}
