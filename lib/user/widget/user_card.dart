//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
        extentRatio: 0.5,
        motion: const StretchMotion(),
        children: [
          SlidableAction(
              spacing: 4,
              padding: const EdgeInsets.only(left: 4),
              borderRadius: BorderRadius.circular(18),
              backgroundColor: const Color.fromARGB(255, 243, 175, 175),
              foregroundColor: Colors.red,
              label: 'REFUSER',
              icon: Icons.cancel_outlined,
              onPressed: (context) => ()),
          const Padding(padding: EdgeInsets.only(left: 5, top: 10)),
          SlidableAction(
              padding: const EdgeInsets.only(left: 4, top: 10),
              spacing: 4,
              borderRadius: BorderRadius.circular(12),
              backgroundColor: const Color.fromARGB(255, 183, 226, 185),
              icon: Icons.done,
              label: 'ACEPTER',
              foregroundColor: Colors.green,
              onPressed: (context) => {}),
        ],
      ),
      child: Container(
          margin: const EdgeInsets.only(left: 12, right: 12, top: 15),
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
                margin: const EdgeInsets.only(top: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      priceUser(price),
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
    padding: const EdgeInsets.only(left: 8, top: 2),
    height: 23,
    width: 59,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color.fromARGB(255, 252, 238, 158),
    ),
    child: const Text(
      "Soumis",
      style: TextStyle(
        color: Color.fromARGB(255, 255, 177,
            8), // Changer la couleur du texte en noir ou toute autre couleur de votre choix
        fontSize: 12,
        //fontFamily: "Monteserrat"
        //
      ),
    ),
  );
}

RichText priceUser(price) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: '$price', // Votre montant ici
          style: const TextStyle(
            color: Colors.black, // Couleur du montant
            fontSize: 19, // Ajustez la taille du montant selon vos préférences
            fontFamily: 'Montserrat', // Police de caractères du montant
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
          ),
        ),
        const WidgetSpan(
          child: Icon(
            Icons.euro_symbol, // Utilisez l'icône Euro
            size: 14, // Ajustez la taille de l'icône selon vos préférences
            color: Colors.black, // Couleur de l'icône
          ),
        ),
      ],
    ),
  );
}
