import 'package:flutter/material.dart';

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
    return Container(
        margin: const EdgeInsets.only(left: 12, right: 12, top: 9),
        height: 90,
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
              margin: const EdgeInsets.only(top: 20),
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
                        )),
                    Text(description,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 197, 196, 196),
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                        )),
                  ]),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 120, top: 10),
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                      child: Text(date,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 197, 196, 196),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                          )),
                    ),
                    submit(),
                  ]),
                )
              ],
            ),
          ],
        ));
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
      padding: const EdgeInsets.all(15),
      height: 30,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 253, 232, 136),
      ),
      child: const Text(
        "Soumis",
        style: TextStyle(
          color: Color.fromARGB(255, 250, 184, 1),
          fontSize: 12,
        ),
      ));
}
