import 'package:bai_choi/model/Song.dart';

import '../model/Cards.dart';

class ListService {

  List<Cardss> getPhoSachList(){
    List<Cardss> list = List.from(listCardSach);
    return list;
  }
  List<Cardss> getPhoVanList(){
    List<Cardss> list = List.from(listCardVan);
    return list;
  }
  List<Cardss> getPhoVawnList(){
    List<Cardss> list = List.from(listCardVawn);
    return list;
  }
  List<List<Song>> getAllSongList(){
    List<List<Song>> list = List.from(allSongList);
    return list;
  }


}