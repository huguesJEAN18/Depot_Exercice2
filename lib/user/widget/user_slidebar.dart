import 'package:exercice_2/user/widget/usr_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableList extends StatelessWidget {
  const SlidableList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      UserCard(
          description: "Allé / Retour paris", date: "22 sept", price: 26.7),
      UserCard(
          description: "Allé / Retour paris", date: "22 sept", price: 26.7),
      UserCard(
          description: "Allé / Retour paris", date: "22 sept", price: 26.7),
    ]);
  }
}
