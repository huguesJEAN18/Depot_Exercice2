import 'package:flutter/material.dart';

class UserCheckbox extends StatefulWidget {
  const UserCheckbox({super.key});

  @override
  _UserCheckboxState createState() => _UserCheckboxState();
}

class _UserCheckboxState extends State<UserCheckbox> {
  bool isChecked =
      false; // Définissez la valeur isChecked comme variable d'état

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Transform.scale(
            scale: 1.3,
            child: Checkbox(
              value: isChecked, // Utilisez la valeur isChecked
              activeColor: Colors.red,
              onChanged: (newbool) {
                setState(() {
                  isChecked = newbool!; // Mettez à jour la valeur isChecked
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
