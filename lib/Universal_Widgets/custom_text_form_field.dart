import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  String? labelText;
  int? maxLines;
  TextAlign? textAlign;
  TextEditingController? controller;
  final String? Function(String?)? validator;
  final AutovalidateMode autovalidateMode;
  bool? isEnabled;

  CustomTextFormField({super.key,

    this.labelText,
    this.maxLines,
    this.textAlign,
    this.controller,
    this.validator,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.isEnabled,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      controller: controller,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.start,
      validator: validator,
      enabled: isEnabled,
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
