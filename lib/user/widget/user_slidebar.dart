import 'package:exercice_2/user/widget/user_card.dart';
import 'package:flutter/material.dart';

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
