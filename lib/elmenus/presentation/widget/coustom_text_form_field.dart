import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CoustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String labeltext;
  bool noIcon;
  Function(String)? onchanged;

  CoustomTextFormField({
    super.key,
    this.controller,
    required this.labeltext,
    this.noIcon = true,
    this.onchanged,
  });

  @override
  State<CoustomTextFormField> createState() => _CoustomTextFormFieldState();
}

class _CoustomTextFormFieldState extends State<CoustomTextFormField> {
  bool isObsecure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecure,
      onChanged: widget.onchanged,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIconColor: Color(0xFFFF2B85),
        suffixIcon: widget.noIcon
            ? const SizedBox()
            : IconButton(
                onPressed: () {
                  setState(() {
                    isObsecure = !isObsecure;
                  });
                },
                icon: isObsecure
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
        labelText: widget.labeltext,
        contentPadding: EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
      ),
    );
  }
}
