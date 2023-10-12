import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';

import '../model/Song.dart';


class SongController extends ChangeNotifier {

  Future<void> readAssetsFolder() async {
    // final manifestContent = await rootBundle.loadString('AssetManifest.json');
    //
    // final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // print(manifestMap.toString());
    //
    // List<String> listMp3 =
    // manifestMap.keys.where((String key) => key.contains('.mp4')).toList();
    //
    // for(String item in listMp3) {
    //   print(item);
    // }

  }
}
