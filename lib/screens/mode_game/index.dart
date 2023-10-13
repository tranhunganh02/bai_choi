import 'dart:math';

import 'package:bai_choi/model/Player.dart';
import 'package:bai_choi/screens/test/test2.dart';
import 'package:flutter/material.dart';
import 'package:bai_choi/utils/routes.dart' as route;
import 'package:bai_choi/services/ModeGameServices.dart';

class ModeGameScreen extends StatefulWidget {
  const ModeGameScreen({super.key});

  @override
  State<ModeGameScreen> createState() => _ModeGameScreenState();
}

class _ModeGameScreenState extends State<ModeGameScreen> {
  TextEditingController myinput = TextEditingController();
  bool showError = false;

  // ignore: non_constant_identifier_names
  ModeGameServices MGS = ModeGameServices();

  void validateInput() async {
    if (myinput.text.isEmpty) {
      setState(() {
        showError = true;
      });
    } else {
      setState(() {
        showError = false;
      });
      List<Player> listPlayer = await getD();
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RoomScreen(listPlayer: listPlayer),
        ),
      );
    }
  }

  Future<List<Player>> getD() async {
    List<Player> abc = await MGS.getDataPlayer(myinput.text);
    return abc;
  }

  @override
  void initState() {
    myinput.text = ""; //innitail value of text field
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: TextField(
                  controller: myinput,
                  decoration: InputDecoration(
                      errorBorder: const UnderlineInputBorder(),
                      errorText:
                          showError ? 'Nhập tên trước khi vào game' : null,
                      errorStyle: const TextStyle(color: Colors.black),
                      enabled: true,
                      fillColor: Colors.white,
                      labelText: 'Vui lòng nhập tên',
                      labelStyle: const TextStyle(color: Colors.white),
                      border: const OutlineInputBorder()),
                  onChanged: (text) {
                    myinput.text = text;
                  },
                  textAlign: TextAlign.center,
                  onTap: () {},
                  onSubmitted: (String value) {},
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              TextButton(
                onPressed: () {
                  validateInput();
                },
                style: const ButtonStyle(
                  alignment: Alignment.center,
                ),
                child: const Text(
                  "Vào game",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
