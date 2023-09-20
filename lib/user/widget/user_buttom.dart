import 'package:flutter/material.dart';
import 'user_checkbox.dart';

class UserButtom extends StatelessWidget {
  const UserButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const UserCheckbox(),
          const Padding(padding: EdgeInsets.only(left: 15)),
          searchBar(),
          const Padding(padding: EdgeInsets.only(left: 12)),
          IconButton(
            icon: const Icon(Icons.tune),
            onPressed: () => {},
          ),
          //const Icon(Icons.settings)
        ],
      ),
    );
  }
}

SizedBox searchBar() {
  return SizedBox(
    height: 34,
    width: 250,
    child: TextField(
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 236, 236, 236),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        hintText: 'Rechercher',
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: Colors.grey,
        contentPadding: const EdgeInsets.symmetric(
            vertical: 8.0), // Ajustez cet espacement selon vos préférences
      ),
    ),
  );
}
