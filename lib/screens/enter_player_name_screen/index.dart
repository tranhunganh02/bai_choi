import 'package:bai_choi/model/Player.dart';
import 'package:bai_choi/model/GameMatch.dart';
import 'package:bai_choi/screens/Ingame/index.dart';
import 'package:bai_choi/services/ListService.dart';
import 'package:flutter/material.dart';
import 'package:bai_choi/utils/routes.dart' as route;
import 'package:bai_choi/services/ModeGameServices.dart';

import '../../model/Cards.dart';

class EnterPlayerScreen extends StatefulWidget {
  final int maxRound;

  const EnterPlayerScreen({super.key, required this.maxRound});

  @override
  State<EnterPlayerScreen> createState() => _EnterPlayerScreenState();
}

class _EnterPlayerScreenState extends State<EnterPlayerScreen> {
  TextEditingController playerName1 = TextEditingController();
  TextEditingController playerName2 = TextEditingController();
  TextEditingController playerName3 = TextEditingController();
  TextEditingController playerName4 = TextEditingController();

  GameMatch gameMatch = GameMatch();

  ListService LS = ListService();
  List<Cardss> phoSachList = [];
  List<Cardss> phoVanList = [];
  List<Cardss> phoVawnList = [];

  bool showError = false;

  // ignore: non_constant_identifier_names
  ModeGameServices MGS = ModeGameServices();

  void validateInput() async {
    if (playerName1.text.isEmpty) {
      setState(() {
        showError = true;
      });
    } else {
      setState(() {
        showError = false;
      });
      gameMatch = await getMatchData();

      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RoomScreen(gameMatch: gameMatch),
        ),
      );
    }
  }

  Future<GameMatch> getMatchData() async {
    phoSachList = LS.getPhoSachList();
    phoVanList = LS.getPhoVanList();
    phoVawnList = LS.getPhoVawnList();

    GameMatch match = MGS.createGameMatch(
        widget.maxRound,
        playerName1.text,
        playerName2.text.isNotEmpty ? playerName2.text : "Bot1",
        playerName3.text.isNotEmpty ? playerName3.text : "Bot2",
        playerName4.text.isNotEmpty ? playerName4.text : "Bot3",
        phoSachList,
        phoVanList,
        phoVawnList);
    return match;
  }

  @override
  void initState() {
    // phoSachList = LS.getPhoSachList();
    // phoVanList = LS.getPhoVanList();
    // phoVawnList = LS.getPhoVawnList();

    playerName1.text = ""; //innitail value of text field
    playerName2.text = ""; //innitail value of text field
    playerName3.text = ""; //innitail value of text field
    playerName4.text = ""; //innitail value of text field
    super.initState();
  }

  @override
  void dispose() {
    phoSachList.clear();
    phoVanList.clear();
    phoVawnList.clear();

    super.dispose();
    playerName1.dispose();
    playerName2.dispose();
    playerName3.dispose();
    playerName4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton.small(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      backgroundColor: Color(0xFFB22A21),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    SizedBox(width: 100,),
                    Text("Đặt tên:",
                        style: TextStyle(
                            fontFamily: "DelaGothicOne",
                            fontSize: 30,
                            color: const Color(0xFFFDB813),
                            shadows: [
                              Shadow(
                                blurRadius: 4,
                                color: Colors.black.withOpacity(0.25),
                                offset: const Offset(3, 3),
                              )
                            ])),
                    Container(
                      width: 250,
                      margin:const EdgeInsets.only(left: 100),
                      child: TextField(
                        controller: playerName1,
                        focusNode: FocusNode(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Aviano',
                            fontSize: 10),
                        decoration: InputDecoration(
                          errorBorder: const UnderlineInputBorder(),
                          errorText:
                              showError ? 'Nhập tên trước khi vào game' : null,
                          errorStyle: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Aviano',
                              fontSize: 7),
                          enabled: true,
                          fillColor: Colors.white,
                          labelText: 'Nhập tên người chơi 1',
                          border: const OutlineInputBorder(),
                          labelStyle: const TextStyle(
                              color: Color(0xFFFDB813),
                              fontSize: 10,
                              fontFamily: 'Aviano'),
                        ),
                        onChanged: (text) {
                          playerName1.text = text;
                        },
                        textAlign: TextAlign.center,
                        onTap: () {},
                        onSubmitted: (String value) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(),
              ElevatedButton(
                onPressed: () {
                  validateInput();
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xFFFDB813)),
                  alignment: Alignment.center,
                ),
                child: const Text(
                  "Vào game",
                  style:
                      TextStyle(color: Color(0xFF005D4B), fontFamily: 'Aviano'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
