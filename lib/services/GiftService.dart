import 'package:shared_preferences/shared_preferences.dart';

import '../model/Gift.dart';

class GiftService{

  Future<void> createDataFirstTime(List<Gift> list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (Gift gift in list){
      prefs.setBool(gift.id.toString(), false);
    }
  }

  Future<bool> isUnlocked(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getBool(id)??false){
      return true;
    }
    return false;
  }

  Future<List<Gift>> getList (List<Gift> list) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Gift> returnList = [];
    for (Gift gift in list){
      bool? temp = prefs.getBool(gift.id.toString());
      if(temp??false){
        gift.isUnlocked = true;
        returnList.add(gift);
      }
    }
    return returnList;
  }

}