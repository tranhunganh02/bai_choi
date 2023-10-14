// ignore: file_names
import 'package:bai_choi/model/CardType.dart';
import 'package:bai_choi/model/Cards.dart';

import '../services/RoomServices.dart';

// ignore: camel_case_types
abstract class RoomRepository{

  Future<Cardss> getRandomCardsWithTypes(int numCards);

}
// ignore: camel_case_types
class RoomRepositoryImp extends RoomRepository {

    RoomServices RS = RoomServices();

  @override
  Future<Cardss> getRandomCardsWithTypes(int numCards) {
    // TODO: implement getRandomCardsWithTypes
    RS.getRandomCardsWithTypes(numCards);
    throw UnimplementedError();
  }

}