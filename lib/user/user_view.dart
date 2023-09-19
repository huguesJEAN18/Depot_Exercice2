import 'dart:math';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:exercice_2/user/widget/user_buttom.dart';
import 'package:exercice_2/user/widget/user_header.dart';
import 'package:exercice_2/user/widget/usr_card.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        //const headerUser(name: 'JEAN', surname: 'Hugues') as String,
        title: const Text("JEAN Hugues"),
        backgroundColor: const Color.fromARGB(255, 10, 10, 10),
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 8, right: 8),
        color: const Color.fromARGB(255, 250, 250, 243),
        height: MediaQuery.of(context).size.height,
        //color: Color.fromARGB(57, 168, 168, 168),
        child: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //Padding(padding: EdgeInsets.only(top: 10)),
              HeaderUser(date: "NDF Octobre", price: 75.3),
              UserButtom(),
              Padding(padding: EdgeInsets.only(top: 12)),

              UserCard(
                  description: "Allé/ Retour paris",
                  date: "22 sept",
                  price: 26.17),
              UserCard(
                  description: "Allé/ Retour paris",
                  date: "22 sept",
                  price: 26.17),
              UserCard(
                  description: "Allé/ Retour paris",
                  date: "22 sept",
                  price: 26.17),

              //HeaderUser(date: "NDF Octobre", price: 78.3),
              //UserButtom()
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 108,
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 250, 250, 243),
            onTap: null,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu_book_outlined,
                    color: Colors.red,
                  ),
                  label: "Emargements"),
              BottomNavigationBarItem(
                  //backgroundColor: Colors.red,
                  icon: Icon(
                    Icons.list,
                    color: Colors.red,
                  ),
                  label: "Menu")
            ],
          )),
    );
  }
}
