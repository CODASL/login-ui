import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final IconData suffixIcon;
  final IconData prefixIcon;
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  const CustomTextFormField({
    Key? key,
    required this.suffixIcon,
    required this.prefixIcon,
    required this.hintText,
    required this.isPassword,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        controller: widget.controller,
        // onChanged: (value) {
        //   debugPrint(value);
        // },
        obscureText: widget.isPassword,
        decoration: InputDecoration(
            suffixIcon: Icon(widget.suffixIcon),
            //enabled: false,
            border: const OutlineInputBorder(),
            //labelText: 'Email',
            prefixIcon: Icon(widget.prefixIcon),
            hintText: widget.hintText),
      ),
    );
  }
}
