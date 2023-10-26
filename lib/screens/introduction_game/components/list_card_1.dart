import 'package:bai_choi/model/Cards.dart';
import 'package:flutter/material.dart';

import 'title_list_card.dart';
import 'type_card_screen.dart';

SingleChildScrollView ListCard(BuildContext context) {
  return SingleChildScrollView(
    child: Container(
      color: Color(0xFFB22A21),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const TitleListCard(title: "Pho Sách"),
          type_card(
            listCardSach,
            listCardSach.length,
          ),
          const TitleListCard(title: "Pho Văn"),
          type_card(
            listCardVan,
            listCardVan.length,
          ),
          const TitleListCard(title: "Pho Vạn"),
          type_card(listCardVawn, listCardVawn.length),
        ]),
      ),
    ),
  );
}
