import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  String name;

  CustomTextField({required this.name, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
        margin: const EdgeInsets.all(8),
        child: TextField(

          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 19),
            filled: true,
            prefixIcon: Icon(Icons.search),
            fillColor: Colors.grey.withOpacity(0.4),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none
            ),
            hintText: name,
          ),
        ));
  }
}
