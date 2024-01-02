import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.hintText,
      this.onChanged,
      this.obscureText = false,
      this.inputType})
      : super(key: key);

  Function(String)? onChanged;
  String? hintText;
  bool? obscureText;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: obscureText!,
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(),
        ),
        hintText: '$hintText',
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class CustomTextField extends StatelessWidget {
//   CustomTextField({this.hintText, this.inputType ,this.onChanged , this.obscureText = false});
//
//   String? hintText;
//   Function(String)? onChanged;
//   bool? obscureText;
//   TextInputType? inputType;
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       obscureText: obscureText!,
//       keyboardType: inputType,
//       onChanged: onChanged,
//       decoration: InputDecoration(
//         hintText: hintText,
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(),
//           borderRadius: BorderRadius.circular(8),
//         ),
//         border: OutlineInputBorder(
//           borderSide: BorderSide(),
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//     );
//   }
// }
