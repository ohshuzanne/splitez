import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Color textFieldColor;
  final Color textFieldBorder;
  final Color shadowColor;
  final Color textColor;
  const MyTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.textFieldBorder,
      required this.textColor,
      required this.shadowColor,
      required this.textFieldColor})
      : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool is_filled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor,
              offset: Offset(3, 3),
              blurRadius: 0,
            ),
          ],
        ),
        child: SizedBox(
          height: 50,
          child: TextFormField(
            controller: widget.controller,
            obscureText: widget.obscureText,
            onChanged: (value) {
              setState(() {
                is_filled = value.isNotEmpty;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Field is required';
              }
              return null;
            },
            style: TextStyle(color: widget.textColor),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.textFieldBorder),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.textFieldBorder),
                borderRadius: BorderRadius.circular(10),
              ),
              fillColor: widget.textFieldColor,
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
