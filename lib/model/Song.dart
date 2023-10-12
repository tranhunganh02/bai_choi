import 'package:bai_choi/model/Card.dart';

class Song{
  late int _id;
  late Card _isCard;
  late String _songURL;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  Card get isCard => _isCard;

  String get songURL => _songURL;

  set songURL(String value) {
    _songURL = value;
  }

  set isCard(Card value) {
    _isCard = value;
  }

  Song(this._id, this._isCard, this._songURL);


}
final List<Song> amList = [
  Song(1, am, 'assets/videos/am/01.mp4'),
];
final List<Song> baGaList = [
  Song(1, baGa, 'assets/videos/ba_ga/01.mp4'),
];
final List<Song> bachTuyetList = [
  Song(1, bachHue, 'assets/videos/bach_tuyet/01.mp4'),
];
final List<Song> banhBaList = [
  Song(1, banhBa, 'assets/videos/banh_ba/01.mp4'),
];
final List<Song> banhHaiList = [
  Song(1, banhHai, 'assets/videos/banh_hai/01.mp4'),
];
final List<Song> batBongList = [
  Song(1, batBong, 'assets/videos/bat_bong/01.mp4'),
];
final List<Song> bayDayList = [
  Song(1, bayThua, 'assets/videos/bat_bong/01.mp4'),
];
final List<Song> chinGoiList = [
  Song(1, chinGoi, 'assets/videos/chin_goi/01.mp4'),
  Song(2, chinGoi, 'assets/videos/chin_goi/02.mp4'),
  Song(3, chinGoi, 'assets/videos/chin_goi/03.mp4'),
];
final List<Song> chuChuaList = [
  Song(1, cuuThay, 'assets/videos/cuu_chua/01.mp4'),
];
final List<Song> doMoList = [
  Song(1, doMo, 'assets/videos/do_mo/01.mp4'),
  Song(2, doMo, 'assets/videos/do_mo/02.mp4'),
];
final List<Song> lucXoList = [
  Song(1, lucXo, 'assets/videos/luc_xo/01.mp4'),
  Song(2, lucXo, 'assets/videos/luc_xo/02.mp4'),
];
final List<Song> namRunList = [
  Song(1, namRun, 'assets/videos/nam_run/01.mp4'),
  Song(2, namRun, 'assets/videos/nam_run/02.mp4'),
];
final List<Song> nguDumList = [
  Song(1, nguDum, 'assets/videos/ngu_dum/01.mp4'),
];
final List<Song> nhatNocList = [
  Song(1, nhatNoc, 'assets/videos/nhat_noc/01.mp4'),
];
final List<Song> nhiBiList = [
  Song(1, nhiBi, 'assets/videos/nhi_bi/01.mp4'),
];
final List<Song> nhiNgheoList = [
  Song(1, nhiNgheo, 'assets/videos/nhi_ngheo/01.mp4'),
  Song(2, nhiNgheo, 'assets/videos/nhi_ngheo/02.mp4'),
];
final List<Song> nhutTroList = [
  Song(1, nhatTro, 'assets/videos/nhut_tro/01.mp4'),
  Song(2, nhatTro, 'assets/videos/nhut_tro/02.mp4'),
];
final List<Song> sauHotList = [
  Song(1, sauHot, 'assets/videos/sau_hot/01.mp4'),
];
final List<Song> sauTienList = [
  Song(1, sauTien, 'assets/videos/sau_tien/01.mp4'),
];
final List<Song> tamDayList = [
  Song(1, tamDay, 'assets/videos/tam_day/01.mp4'),
];
final List<Song> tamQuanList = [
  Song(1, tamQuan, 'assets/videos/tam_quan/01.mp4'),
];
final List<Song> tamTienList = [
  Song(1, tamTien, 'assets/videos/tam_tien/01.mp4'),
  Song(2, tamTien, 'assets/videos/tam_tien/02.mp4'),
];
final List<Song> tuDongList = [
  Song(1, tuDong, 'assets/videos/tu_dong/01.mp4'),
];
final List<List<Song>> allSongList = [
  amList,
  baGaList,
  bachTuyetList,
  banhBaList,
  banhHaiList,
  batBongList,
  bayDayList,
  chinGoiList,
  chuChuaList,
  doMoList,
  lucXoList,
  namRunList,
  nguDumList,
  nhatNocList,
  nhiBiList,
  nhiNgheoList,
  nhutTroList,
  sauHotList,
  sauTienList,
  tamDayList,
  tamQuanList,
  tamTienList,
  tuDongList
];






