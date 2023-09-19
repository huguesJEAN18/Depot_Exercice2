//import 'dart:ffi';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class HeaderUser extends StatelessWidget {
  final String date;
  final double price;

  // ignore: empty_constructor_bodies
  const HeaderUser({super.key, required this.date, required this.price});

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
            priceText('$price '),
          ]),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5),
        ),
      ]),
    );
  }
}

Text priceText(String price) {
  return Text(
    price,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 37,
      fontFamily: 'Montserrat',
    ),
  );
}

Text dateText(String date) {
  return Text(
    date,
    style: const TextStyle(
      color: Color.fromARGB(255, 243, 2, 2),
      fontSize: 20,
      fontFamily: 'Montserrat',
    ),
  );
}
