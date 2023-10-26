import 'package:flutter/material.dart';

import 'card.dart';

// ignore: non_constant_identifier_names
Container type_card(List typeList, int length) {
  return Container(
    height: 320,
    width: double.maxFinite,
    margin: const EdgeInsets.only(bottom: 20),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(length, (index) {
        return Cards(
          image: typeList[index].cardURL,
          press: () {},
          index: index,
        );
      }),
    ),
  );
}
