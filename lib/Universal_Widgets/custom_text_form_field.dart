import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  String? labelText;

  CustomTextFormField({super.key,

    this.labelText,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
          fillColor: Colors.amber,
          labelText: labelText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xFF2149F3),
            ),

          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,

              )
          )
      ),
    );
  }
}
