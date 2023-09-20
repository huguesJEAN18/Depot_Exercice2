import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'user_header.dart';

class UserCard extends StatelessWidget {
  final double price;
  final String description;
  final String date;

  const UserCard({
    super.key,
    required this.description,
    required this.date,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        //extentRatio: 10,
        motion: const StretchMotion(),
        children: [
          SlidableAction(
              padding: const EdgeInsets.only(left: 4),
              spacing: 4,
              borderRadius: BorderRadius.circular(12),
              backgroundColor: const Color.fromARGB(255, 183, 226, 185),
              icon: Icons.done,
              label: 'ACEPTER',
              foregroundColor: Colors.green,
              onPressed: (context) => {conpteur(price)}),
          const Padding(padding: EdgeInsets.only(left: 5)),
          SlidableAction(
              padding: const EdgeInsets.only(left: 4),
              borderRadius: BorderRadius.circular(12),
              backgroundColor: const Color.fromARGB(255, 243, 175, 175),
              foregroundColor: Colors.red,
              label: 'REFUSER',
              icon: Icons.cancel_outlined,
              onPressed: (context) => ())
        ],
      ),
      child: Container(
          margin: const EdgeInsets.only(left: 12, right: 12, top: 9),
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          child: Row(
            children: [
              iconLabel(),
              Container(
                //width: 70,
                //height: 400,
                margin: const EdgeInsets.only(top: 14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('$price ',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 15, 15, 15),
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w900)),
                      Text(description,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 197, 196, 196),
                            fontSize: 14,
                            fontFamily: 'Roboto',
                          )),
                    ]),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 112, top: 6),
                    child: Column(children: [
                      SizedBox(
                        height: 30,
                        child: Text(date,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 163, 163, 163),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                            )),
                      ),
                      submit(),
                    ]),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

Container iconLabel() {
  return Container(
    margin: const EdgeInsets.all(10),
    height: 55,
    width: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color.fromARGB(255, 236, 236, 236),
    ),
    child: const Icon(Icons.train),
  );
}

Container submit() {
  return Container(
      padding: const EdgeInsets.all(12),
      height: 25,
      width: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 253, 232, 136),
      ),
      child: const Text(
        "Soumis",
        style: TextStyle(
          color: Color.fromARGB(255, 14, 13, 13),
          fontSize: 22,
        ),
      ));
}

void conpteur(price) {
  return price;
}
