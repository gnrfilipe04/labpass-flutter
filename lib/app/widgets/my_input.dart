import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {
  const MyInput({Key? key, required this.label, required this.controller})
      : super(key: key);

  final String label;
  final TextEditingController controller;

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.label,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: validatorMethod,
    );
  }

  String? validatorMethod(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a value";
    }
    return null;
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
  }
}
