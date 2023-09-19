import 'package:flutter/material.dart';

class UserButtom extends StatelessWidget {
  const UserButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          checkboxUser(),
          const Padding(padding: EdgeInsets.only(left: 15)),
          testBar(),
          const Padding(padding: EdgeInsets.only(left: 17)),
          const Icon(Icons.settings)
        ],
      ),
    );
  }
}

TextField searchBar() {
  return TextField(
    decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 48, 4, 207),
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.all(30),
        hintText: 'Rechercher',
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: Colors.grey),
  );
}

Container checkboxUser() {
  bool isChecked = false;
  return Container(
    child: Transform.scale(
      scale: 1.3,
      child: Checkbox(
          value: isChecked,
          activeColor: Colors.red,
          onChanged: (newbool) {
            newbool = false;
          }),
    ),
  );
}

SizedBox testBar() {
  return SizedBox(
    height: 36,
    width: 250,
    child: TextField(
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 233, 232, 238),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        hintText: 'Rechercher',
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: Colors.grey,
        contentPadding: const EdgeInsets.symmetric(vertical: 8.0), // Ajustez cet espacement selon vos préférences
      ),
    ),
  );
}
