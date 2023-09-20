//import 'dart:ffi';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class HeaderUser extends StatelessWidget {
  final String date;
  final double priceTotal;

  // ignore: empty_constructor_bodies
  const HeaderUser({super.key, required this.date, required this.priceTotal});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        const Padding(
          padding: EdgeInsets.only(left: 8),
        ),
        dateText(date),
        const Padding(
          padding: EdgeInsets.only(left: 138),
        ),
        priceText('$priceTotal '),
      ]),
      const Padding(
        padding: EdgeInsets.only(top: 5),
      ),
    ]);
  }
}

RichText priceText(price) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: '$price', // Votre montant ici
          style: const TextStyle(
            color: Colors.black, // Couleur du montant
            fontSize: 29, // Ajustez la taille du montant selon vos préférences
            fontFamily: 'Montserrat', // Police de caractères du montant
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w300,
          ),
        ),
        const WidgetSpan(
          child: Icon(
            Icons.euro_symbol, // Utilisez l'icône Euro
            size: 10, // Ajustez la taille de l'icône selon vos préférences
            color: Colors.black, // Couleur de l'icône
          ),
        ),
      ],
    ),
  );
}

Text dateText(String date) {
  return Text(
    date,
    style: const TextStyle(
      color: Color.fromARGB(255, 214, 6, 6),
      fontSize: 20,
      fontFamily: 'Montserrat',
    ),
  );
}
