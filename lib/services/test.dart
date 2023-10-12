import 'dart:math';

enum CardType{
  phoVan,
  phoVawn,
  phoSach
}
class Card {
  late int _id;
  late String _cardName;
  late CardType _cardType;
  late String _cardURL;

  Card(this._id, this._cardName, this._cardType, this._cardURL);

  int get id => _id;

  String get cardName => _cardName;

  CardType get cardType => _cardType;

  String get cardURL => _cardURL;

  set cardURL(String value) {
    _cardURL = value;
  }

  set cardType(CardType value) {
    _cardType = value;
  }

  set cardName(String value) {
    _cardName = value;
  }

  set id(int value) {
    _id = value;
  }
}

final Card nhatNoc = Card(1, "Nhất Nọc", CardType.phoSach, 'assets/img/cards/pho_sach/1.png');
final Card nhiNgheo = Card(2, "Nhì Nghèo", CardType.phoSach, 'assets/img/cards/pho_sach/2.png');
final Card baGa = Card(3, "Ba Gà", CardType.phoSach, 'assets/img/cards/pho_sach/3.png');
final Card tuDong = Card(4, "Tứ Dóng", CardType.phoSach, 'assets/img/cards/pho_sach/4.png');
final Card nguDum = Card(5, "Ngũ Đụm", CardType.phoSach, 'assets/img/cards/pho_sach/5.png');
final Card sauHot = Card(6, "Sáu Hột", CardType.phoSach, 'assets/img/cards/pho_sach/6.png');
final Card bayThua = Card(7, "Bảy Thưa", CardType.phoSach, 'assets/img/cards/pho_sach/7.png');
final Card tamDay  = Card(8, "Tám Dầy", CardType.phoSach, 'assets/img/cards/pho_sach/8.png');
final Card chinGoi = Card(9, "Chín Gối", CardType.phoSach, 'assets/img/cards/pho_sach/9.png');
final Card doMo = Card(10, "Đỏ Mỏ", CardType.phoSach, 'assets/img/cards/pho_sach/10.png');
  
final Card nhatTro = Card(1, "Nhất Trò", CardType.phoVan, 'assets/img/cards/pho_van/1.png');
final Card nhiBi = Card(2, "Nhì Bí", CardType.phoVan, 'assets/img/cards/pho_van/2.png');
final Card tamQuan = Card(3, "Tam Quăn", CardType.phoVan, 'assets/img/cards/pho_van/3.png');
final Card tuHuong = Card(4, "Tư Hương", CardType.phoVan, 'assets/img/cards/pho_van/4.png');
final Card nguTrot = Card(5, "Ngũ Trợt", CardType.phoVan, 'assets/img/cards/pho_van/5.png');
final Card lucXo = Card(6, "Lục Xơ", CardType.phoVan, 'assets/img/cards/pho_van/6.png');
final Card thatNhon = Card(7, "Thất Nhọn", CardType.phoVan, 'assets/img/cards/pho_van/7.png');
final Card batBong = Card(8, "Bát Bồng", CardType.phoVan, 'assets/img/cards/pho_van/8.png');
final Card cuuThay = Card(9, "Cửu Thầy", CardType.phoVan, 'assets/img/cards/pho_van/9.png');
final Card thaiTu = Card(10, "Nhất Trò", CardType.phoVan, 'assets/img/cards/pho_van/10.png');

//Dữ liệu Pho Vạn
final Card bachHue = Card(1, "Bách Huê", CardType.phoVawn, 'assets/img/cards/pho_vawn/1.png');
final Card banhHai = Card(2, "Bành Hai", CardType.phoVawn, 'assets/img/cards/pho_vawn/2.png');
final Card banhBa = Card(3, "Bành Ba", CardType.phoVawn, 'assets/img/cards/pho_vawn/3.png');
final Card tuTuong = Card(4, "Tứ Tượng", CardType.phoVawn, 'assets/img/cards/pho_vawn/4.png');
final Card namRun = Card(5, "Năm Rún", CardType.phoVawn, 'assets/img/cards/pho_vawn/5.png');
final Card sauTien = Card(6, "Sáu Tiền", CardType.phoVawn, 'assets/img/cards/pho_vawn/6.png');
final Card thatLieu = Card(7, "Thất Liễu", CardType.phoVawn, 'assets/img/cards/pho_vawn/7.png');
final Card tamTien = Card(8, "Tám Tiền", CardType.phoVawn, 'assets/img/cards/pho_vawn/8.png');
final Card chinXe = Card(9, "Chín Xe", CardType.phoVawn, 'assets/img/cards/pho_vawn/9.png');
final Card am = Card(10, "ẦM", CardType.phoVawn, 'assets/img/cards/pho_vawn/10.png');


List<Card> listCardSach = [nhatNoc, nhiNgheo, baGa, tuDong, nguDum, sauHot, bayThua, tamDay, chinGoi, doMo];
List<Card> listCardVan = [nhatTro,nhiBi,tamQuan,tuHuong,nguTrot,lucXo,thatNhon,batBong,cuuThay,thaiTu];
List<Card> listCardVawn = [bachHue,banhHai,banhBa,tuTuong,namRun,sauTien,thatLieu,tamTien,chinXe,am];

Card getRandomCardByType(CardType cardType) {
  List<Card> cardList;
  switch (cardType) {
    case CardType.phoSach:
      cardList = listCardSach;
      break;
    case CardType.phoVan:
      cardList = listCardVan;
      break;
    case CardType.phoVawn:
      cardList = listCardVawn;
      break;
  }
  int randomIndex = Random().nextInt(cardList.length);
  return cardList[randomIndex];
}

List<Card> getRandomCardsWithTypes(List<CardType> cardTypes, int numCards) {
  List<Card> randomCards = [];
  for (int i = 0; i < numCards; i++) {
    int randomIndex = Random().nextInt(cardTypes.length);
    CardType randomType = cardTypes[randomIndex];
    Card randomCard = getRandomCardByType(randomType);
    randomCards.add(randomCard);
  }
  return randomCards;
  randomCards.clear();
}

void main() {
  List<CardType> cardTypes = [CardType.phoSach, CardType.phoVan, CardType.phoVawn];
  List<Card> randomCards = getRandomCardsWithTypes(cardTypes, 3);

  for (var card in randomCards) {
    print('Card ID: ${card.id}');
    print('Card Name: ${card.cardName}');
    print('Card Type: ${card.cardType}');
    print('Card URL: ${card.cardURL}');
    print('\n');
  }
}
