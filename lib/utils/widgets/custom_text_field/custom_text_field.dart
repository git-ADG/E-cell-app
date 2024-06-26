import 'package:ecell_app/configs/configs.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? controller = TextEditingController();
  String? Function(String?)? validator;
  bool obscureText;
  TextInputType? textInputType;
  String hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  Color? cursorColor;

  CustomTextField({
    super.key,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.textInputType,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.cursorColor,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: widget.cursorColor,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.obscureText,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.w400),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          fillColor: fieldColor,
          filled: true),
    );
  }
}
