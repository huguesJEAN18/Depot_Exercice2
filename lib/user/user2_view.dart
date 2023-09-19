import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:exercice_2/user/widget/user_buttom.dart';
import 'package:exercice_2/user/widget/user_header.dart';
import 'package:exercice_2/user/widget/usr_card.dart';

class Users extends StatelessWidget {
  const Users({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        toolbarHeight: 88,
        title: const Text("JEAN Hugues"),
        backgroundColor: const Color.fromARGB(255, 10, 10, 10),
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
              HeaderUser(date: "NDF Octobre", price: 75.3),
              UserButtom(),
              Padding(padding: EdgeInsets.only(top: 12)),
              SlidableList(), // Utilisez SlidableList à la place de UserCard
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
          backgroundColor: const Color.fromARGB(255, 174, 216, 174),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.done,
              color: Color.fromARGB(255, 57, 92, 49),
            ),
            Padding(padding: EdgeInsets.only(left: 6)),
            Text(
              'VALIDER',
              style: TextStyle(
                color: Color.fromARGB(255, 57, 92, 49),
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
          side: const BorderSide(color: Color.fromARGB(255, 238, 84, 73)),
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

class SlidableList extends StatelessWidget {
  const SlidableList({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3, // Remplacez par le nombre de cartes que vous avez
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          background: Container(
            color: Colors.green,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(Icons.done, color: Colors.white),
            ),
          ),
          secondaryBackground: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.cancel, color: Colors.white),
            ),
          ),
          onDismissed: (direction) {
            if (direction == DismissDirection.startToEnd) {
              // Logique lorsque vous appuyez sur "Valider"
            } else if (direction == DismissDirection.endToStart) {
              // Logique lorsque vous appuyez sur "Refuser"
            }
          },
          child: Container(
            child: UserCard(description: "Arret\Lyon Paris", date: "22 sep", price: 78.2),
          ),
        );
      },
    );
  }
}