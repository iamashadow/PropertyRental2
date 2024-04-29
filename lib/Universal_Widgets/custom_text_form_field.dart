import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  String? labelText;
  int? maxLines;
  TextAlign? textAlign;

  CustomTextFormField({super.key,

    this.labelText,
    this.maxLines,
    this.textAlign,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.start,
      decoration: InputDecoration(
        // filled: true,
        //   fillColor: Colors.amber,
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
