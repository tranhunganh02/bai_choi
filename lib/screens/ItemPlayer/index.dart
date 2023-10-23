import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemPlayer extends StatefulWidget {
  const ItemPlayer({super.key});

  @override
  State<ItemPlayer> createState() => _ItemState();
}

class _ItemState extends State<ItemPlayer> {
  @override
  Widget build(BuildContext context) {
    //List<String> imageUrls = [];
    //get image from local
    Future<List<String>> getImageUrls() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String> imageUrls = prefs.getStringList('imageUrls') ?? [];
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

    return FutureBuilder<List<String>>(
        future: getImageUrls(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Đã xảy ra lỗi'));
          }

          List<String> imageUrls = snapshot.data ?? [];

          return Container(
            color: Theme.of(context).colorScheme.primary,
            child: ListView.builder(
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Text('Hình ảnh ${imageUrls[index]}');
              },
            ),
          );
        },
      );
  }
}
