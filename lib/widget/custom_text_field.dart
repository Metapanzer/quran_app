import 'package:flutter/material.dart';
import 'package:quran_app/constant/custom_color.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      this.controller,
      required this.isPassword});
  final String label;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: TextFormField(
          controller: widget.controller,
          obscureText: widget.isPassword ? !showPassword : false,
          decoration: InputDecoration(
            label: Text(
              widget.label,
              style: const TextStyle(color: Color(CustomColor.primary)),
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(CustomColor.primary)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  )
                : null,
            filled: true,
            fillColor: const Color(CustomColor.lightSecondary),
          ),
        ));
  }
}
