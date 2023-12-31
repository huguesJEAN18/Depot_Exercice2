import 'package:exercice_2/user/widget/user_apbar.dart';
import 'package:exercice_2/user/widget/user_slidebar.dart';
import 'package:flutter/material.dart';

import 'package:exercice_2/user/widget/user_buttom.dart';
import 'package:exercice_2/user/widget/user_header.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        toolbarHeight: 88,
        title: const Text(
          "JEAN Hugues",
          style: TextStyle(fontFamily: "Montserrat"),
        ),
        backgroundColor: const Color.fromARGB(255, 27, 27, 27),
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 8, right: 8),
        color: const Color.fromARGB(255, 250, 250, 243),
        height: MediaQuery.of(context).size.height,
        child: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              HeaderUser(date: "NDF Octobre", priceTotal: 75.3),
              UserButtom(),
              Padding(padding: EdgeInsets.only(top: 12)),
              SlidableList()
              // Utilisez SlidableList à la place de UserCard
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: const Color.fromARGB(255, 248, 248, 247),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Row(
          children: [
            const Padding(padding: EdgeInsets.only(left: 12)),
            refuserButton(),
            const Padding(padding: EdgeInsets.only(left: 20)),
            accepterButton(),
          ],
        ),
      ),
    );
  }
}

Container accepterButton() {
  return Container(
    child: SizedBox(
      height: 50,
      width: 150,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 183, 226, 185),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.done,
              color: Colors.green,
            ),
            Padding(padding: EdgeInsets.only(left: 6)),
            Text(
              'VALIDER',
              style: TextStyle(
                color: Color.fromARGB(255, 79, 161, 82),
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Container refuserButton() {
  return Container(
    child: SizedBox(
      height: 50,
      width: 150,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          side: const BorderSide(
              color: Color.fromARGB(255, 238, 84, 73), width: 3),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.cancel_outlined,
              color: Colors.red,
            ),
            Padding(padding: EdgeInsets.only(left: 6)),
            Text(
              'REFUSER',
              style: TextStyle(
                color: Color.fromARGB(255, 243, 1, 1),
                fontFamily: 'Montserrat',
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
