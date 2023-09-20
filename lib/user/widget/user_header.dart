//import 'dart:ffi';
import 'usr_card.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class HeaderUser extends StatelessWidget {
  final String date;
  final double priceTotal;

  // ignore: empty_constructor_bodies
  const HeaderUser({super.key, required this.date, required this.priceTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          child: Row(children: [
            const Padding(
              padding: EdgeInsets.only(left: 8),
            ),
            dateText(date),
            const Padding(
              padding: EdgeInsets.only(left: 138),
            ),
            priceText('$priceTotal '),
          ]),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5),
        ),
      ]),
    );
  }
}

Text priceText(priceTotal) {
  return Text(
    priceTotal,
    style: const TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w100),
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
