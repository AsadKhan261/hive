import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  String name;

  CustomTextField({required this.name, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            labelText: name,
          ),
        ));
  }
}
