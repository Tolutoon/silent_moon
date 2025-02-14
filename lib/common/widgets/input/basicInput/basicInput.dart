import 'package:flutter/material.dart';

class BasicInputField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  const BasicInputField(
      {super.key, required this.hintText, required this.controller});

  @override
  State<BasicInputField> createState() => _BasicInputFieldState();
}

class _BasicInputFieldState extends State<BasicInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding: const EdgeInsets.all(18),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );
  }
}
