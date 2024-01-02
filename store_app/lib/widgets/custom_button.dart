import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.onTap, required this.buttonName}) : super(key: key);
  VoidCallback? onTap;
  String buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
            child: Text(
          buttonName,
          style: const TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class CustomButton extends StatelessWidget {
//    CustomButton({Key? key, required this.txtButton , this.onTap}) : super(key: key);
//
//    String txtButton;
//    VoidCallback? onTap;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         width: double.infinity,
//         height: 60,
//         child: Center(
//           child: Text(txtButton , style: TextStyle(color: Colors.white),),
//         ),
//       ),
//     );
//   }
// }
