import 'package:flutter/material.dart';

class BasicInputField extends StatelessWidget {
  final String hintText;
  const BasicInputField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(18),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );
  }
}
