import 'package:flutter/material.dart';
import 'package:bai_choi/utils/routes.dart' as route;


class ChooseTypeGame extends StatefulWidget {
  const ChooseTypeGame({super.key});

  @override
  State<ChooseTypeGame> createState() => _ChooseTypeGameState();
}

class _ChooseTypeGameState extends State<ChooseTypeGame> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xFFB22A21),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FloatingActionButton.small(
              onPressed: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: Text("Chọn mode chơi",
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
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () =>{},
                        style: const ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(Color(0xFFFDB813))),
                        child: const Text("Nhanh",
                            style: TextStyle(
                                color: Color(0xFF005D4B),
                                fontFamily: 'Aviano')),
                      ),
                      ElevatedButton(
                        onPressed: () =>{},
                        style: const ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(Color(0xFFFDB813))),
                        child: const Text("Thường",
                            style: TextStyle(
                                color: Color(0xFF005D4B),
                                fontFamily: 'Aviano')),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
