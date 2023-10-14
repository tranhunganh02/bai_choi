// ignore: file_names
import 'package:bai_choi/model/CardType.dart';

class Cardss {
  late int _id;
  late String _cardName;
  late CardType _cardType;
  late String _cardURL;

  Cardss(this._id, this._cardName, this._cardType, this._cardURL);

  int get id => _id;

  String get cardssName => _cardName;

  CardType get cardssType => _cardType;

  String get cardURL => _cardURL;

  set cardURL(String value) {
    _cardURL = value;
  }

  set cardssType(CardType value) {
    _cardType = value;
  }

  set cardssName(String value) {
    _cardName = value;
  }

  set id(int value) {
    _id = value;
  }
}
// Dữ liệu Pho sách
final Cardss nhatNoc = Cardss(1, "Nhất Nọc", CardType.phoSach, 'assets/img/cards/pho_sach/1.png');
final Cardss nhiNgheo = Cardss(2, "Nhì Nghèo", CardType.phoSach, 'assets/img/cards/pho_sach/2.png');
final Cardss baGa = Cardss(3, "Ba Gà", CardType.phoSach, 'assets/img/cards/pho_sach/3.png');
final Cardss tuDong = Cardss(4, "Tứ Dóng", CardType.phoSach, 'assets/img/cards/pho_sach/4.png');
final Cardss nguDum = Cardss(5, "Ngũ Đụm", CardType.phoSach, 'assets/img/cards/pho_sach/5.png');
final Cardss sauHot = Cardss(6, "Sáu Hột", CardType.phoSach, 'assets/img/cards/pho_sach/6.png');
final Cardss bayThua = Cardss(7, "Bảy Thưa", CardType.phoSach, 'assets/img/cards/pho_sach/7.png');
final Cardss tamDay  = Cardss(8, "Tám Dầy", CardType.phoSach, 'assets/img/cards/pho_sach/8.png');
final Cardss chinGoi = Cardss(9, "Chín Gối", CardType.phoSach, 'assets/img/cards/pho_sach/9.png');
final Cardss doMo = Cardss(10, "Đỏ Mỏ", CardType.phoSach, 'assets/img/cards/pho_sach/10.png');

//Dữ liệu Pho Văn
final Cardss nhatTro = Cardss(1, "Nhất Trò", CardType.phoVan, 'assets/img/cards/pho_van/1.png');
final Cardss nhiBi = Cardss(2, "Nhì Bí", CardType.phoVan, 'assets/img/cards/pho_van/2.png');
final Cardss tamQuan = Cardss(3, "Tam Quăn", CardType.phoVan, 'assets/img/cards/pho_van/3.png');
final Cardss tuHuong = Cardss(4, "Tư Hương", CardType.phoVan, 'assets/img/cards/pho_van/4.png');
final Cardss nguTrot = Cardss(5, "Ngũ Trợt", CardType.phoVan, 'assets/img/cards/pho_van/5.png');
final Cardss lucXo = Cardss(6, "Lục Xơ", CardType.phoVan, 'assets/img/cards/pho_van/6.png');
final Cardss thatNhon = Cardss(7, "Thất Nhọn", CardType.phoVan, 'assets/img/cards/pho_van/7.png');
final Cardss batBong = Cardss(8, "Bát Bồng", CardType.phoVan, 'assets/img/cards/pho_van/8.png');
final Cardss cuuThay = Cardss(9, "Cửu Thầy", CardType.phoVan, 'assets/img/cards/pho_van/9.png');
final Cardss thaiTu = Cardss(10, "Nhất Trò", CardType.phoVan, 'assets/img/cards/pho_van/10.png');

//Dữ liệu Pho Vạn
final Cardss bachHue = Cardss(1, "Bách Huê", CardType.phoVawn, 'assets/img/cards/pho_vawn/1.png');
final Cardss banhHai = Cardss(2, "Bành Hai", CardType.phoVawn, 'assets/img/cards/pho_vawn/2.png');
final Cardss banhBa = Cardss(3, "Bành Ba", CardType.phoVawn, 'assets/img/cards/pho_vawn/3.png');
final Cardss tuTuong = Cardss(4, "Tứ Tượng", CardType.phoVawn, 'assets/img/cards/pho_vawn/4.png');
final Cardss namRun = Cardss(5, "Năm Rún", CardType.phoVawn, 'assets/img/cards/pho_vawn/5.png');
final Cardss sauTien = Cardss(6, "Sáu Tiền", CardType.phoVawn, 'assets/img/cards/pho_vawn/6.png');
final Cardss thatLieu = Cardss(7, "Thất Liễu", CardType.phoVawn, 'assets/img/cards/pho_vawn/7.png');
final Cardss tamTien = Cardss(8, "Tám Tiền", CardType.phoVawn, 'assets/img/cards/pho_vawn/8.png');
final Cardss chinXe = Cardss(9, "Chín Xe", CardType.phoVawn, 'assets/img/cards/pho_vawn/9.png');
final Cardss am = Cardss(10, "ẦM", CardType.phoVawn, 'assets/img/cards/pho_vawn/10.png');


List<Cardss> listCardSach = [nhatNoc, nhiNgheo, baGa, tuDong, nguDum, sauHot, bayThua, tamDay, chinGoi, doMo];
List<Cardss> listCardVan = [nhatTro,nhiBi,tamQuan,tuHuong,nguTrot,lucXo,thatNhon,batBong,cuuThay,thaiTu];
List<Cardss> listCardVawn = [bachHue,banhHai,banhBa,tuTuong,namRun,sauTien,thatLieu,tamTien,chinXe,am];