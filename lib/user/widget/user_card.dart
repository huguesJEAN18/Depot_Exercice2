import 'package:flutter/material.dart';

class CardUSer extends StatefulWidget {
  final double price;
  final String description;
  final String date;
  const CardUSer(
      {super.key,
      required this.price,
      required this.description,
      required this.date});

  @override
  State<CardUSer> createState() => CardUSerState();
}

class CardUSerState extends State<CardUSer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: const Column(children: []),
    );
  }
}

Text dateUserCard(String date) {
  return Text(
    date,
    style: const TextStyle(
      color: Color.fromARGB(255, 197, 196, 196),
      fontSize: 12,
      fontFamily: 'Montserrat',
    ),
  );
}

Text priceUserCard(Text price) {
  return Text(
    '$price',
    style: const TextStyle(
      color: Color.fromARGB(255, 197, 196, 196),
      fontSize: 12,
      fontFamily: 'Montserrat',
    ),
  );
}
