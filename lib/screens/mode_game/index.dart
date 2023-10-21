import 'package:flutter/material.dart';
import 'package:bai_choi/utils/routes.dart' as route;

class ChooseModeGame extends StatefulWidget {
  const ChooseModeGame({super.key});

  @override
  State<ChooseModeGame> createState() => _ChooseModeGameState();
}

class _ChooseModeGameState extends State<ChooseModeGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFB22A21),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FloatingActionButton(
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
                          onPressed: () =>
                              Navigator.pushNamed(context, route.typeGameScreen),
                          style: const ButtonStyle(
                              backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFFDB813))),
                          child: const Text("Offline Mode",
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
          ),
        ));
  }
}
