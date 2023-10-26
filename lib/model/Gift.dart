class Gift {
  late int _id;
  late String _name;
  late String _url;
  late bool _isUnlocked;


  Gift(this._id, this._name, this._url, this._isUnlocked);

  String get url => _url;

  set url(String value) {
    _url = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  bool get isUnlocked => _isUnlocked;

  set isUnlocked(bool value) {
    _isUnlocked = value;
  }
}

Gift amThuc = Gift(
    1, 'Ẩm Thực', 'assets/gift/bieu_tuong_viet/am_thuc.png', false);
Gift aoDai = Gift(2, 'Áo Dài', 'assets/gift/bieu_tuong_viet/ao_dai.png', false);
Gift banDoVietNam = Gift(
    3, 'Bản Đồ Việt Nam', 'assets/gift/bieu_tuong_viet/ban_do_viet_nam.png',
    false);
Gift caPhe = Gift(4, 'Cà Phê', 'assets/gift/bieu_tuong_viet/ca_phe.png', false);
Gift coVietNam = Gift(
    5, 'Cờ Việt Nam', 'assets/gift/bieu_tuong_viet/co_viet_nam.png', false);
Gift dinhDocLap = Gift(
    6, 'Dinh Độc Lập', 'assets/gift/bieu_tuong_viet/dinh_doc_lap.png', false);
Gift ganhHangRong = Gift(
    7, 'Gánh Hàng Rong', 'assets/gift/bieu_tuong_viet/ganh_hang_rong.png',
    false);
Gift longDen = Gift(
    8, 'Lồng Đèn', 'assets/gift/bieu_tuong_viet/long_den.png', false);
Gift nhaSan = Gift(
    9, 'Nhà Sàn', 'assets/gift/bieu_tuong_viet/nha_san.png', false);
Gift nonLa = Gift(
    10, 'Nón Lá', 'assets/gift/bieu_tuong_viet/non_la.png', false);
Gift nonNuoc = Gift(
    11, 'Non Nước', 'assets/gift/bieu_tuong_viet/non_nuoc.png', false);
Gift nongDan = Gift(
    12, 'Nông Dân', 'assets/gift/bieu_tuong_viet/nong_dan.png', false);
Gift quat = Gift(13, 'Quạt', 'assets/gift/bieu_tuong_viet/quat.png', false);
Gift thapChua = Gift(
    14, 'Tháp Chùa', 'assets/gift/bieu_tuong_viet/thap_chua.png', false);
Gift thuyenBuom = Gift(
    15, 'Thuyền Buồm', 'assets/gift/bieu_tuong_viet/thuyen_buom.png', false);
Gift xeHoa = Gift(
    16, 'Xe Hoa', 'assets/gift/bieu_tuong_viet/xe_hoa.png', false);

List<Gift> bieuTuongVietNam = [
  amThuc,
  aoDai,
  banDoVietNam,
  caPhe,
  coVietNam,
  dinhDocLap,
  ganhHangRong,
  longDen,
  nhaSan,
  nonLa,
  nonNuoc,
  nongDan,
  quat,
  thapChua,
  thuyenBuom,
  xeHoa
];

