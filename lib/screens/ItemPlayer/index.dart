

import 'package:bai_choi/services/GiftService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/Gift.dart';

class ItemPlayer extends StatefulWidget {
  const ItemPlayer({super.key});

  @override
  State<ItemPlayer> createState() => _ItemState();
}

class _ItemState extends State<ItemPlayer> {
  GiftService gs = GiftService();
  List<Gift> bieuTuongList = List.of(bieuTuongVietNam);


  @override
  Widget build(BuildContext context) {
    List<Gift> imageUrls = [];
    //get image from local
    Future<List<Gift>> getImageUrls(List<Gift> list) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      for (Gift gift in list){
        if(prefs.getBool(gift.id.toString())??false){
          gift.isUnlocked = true;
        }
      }
      return imageUrls;
    }

    //set list loadImageUrls();
    // void loadImageUrls() async {
    //   List<String> urls = await getImageUrls();
    //   print(urls.length);
    //   setState(() {
    //     imageUrls = urls;
    //   });
    // }
    // @override
    // void initState() {

    //   super.initState();
    //   loadImageUrls();
    // }

    return FutureBuilder<List<Gift>>(
      future: getImageUrls(bieuTuongList),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Đã xảy ra lỗi'));
        }

        List<Object> imageUrls = snapshot.data ?? [];

        return Scaffold(
      appBar: AppBar(
            backgroundColor: Color(0xFFB22A21),
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFFFDB813),
              ),
            ),
            title: Text('Bộ sưu tập',
                style: TextStyle(
                    fontFamily: 'DelaGothicOne', color: Color(0xFFFDB813))),
          ),
          body: Container(
            color: Color(0xFFB22A21),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bieuTuongList.length,
                itemBuilder: (context, int index) {
                  return Card(
                      color: const Color(0xFFFDB813),
                      elevation: 3.0,
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                  bieuTuongList[index].isUnlocked?bieuTuongList[index].url:'assets/img/no_background.png',
                                  fit: BoxFit.fitHeight),
                              Text(
                                bieuTuongList[index].name,
                                style: const TextStyle(
                                    fontFamily: 'DelaGothicOne',
                                    fontSize: 10,
                                    color: Color(0xFFB22A21)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ));
                }),
          ),
        );
      },
    );
  }
}