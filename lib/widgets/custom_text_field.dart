import 'package:flutter/material.dart';
import 'package:notes/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxline = 1});
 final String hint;
 final int maxline;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxline,
      cursorColor: kPrimaaryryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:const TextStyle(color: kPrimaaryryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaaryryColor),
      ),
    );
  }
}
OutlineInputBorder buildBorder([color]) {
    return  OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius:const BorderRadius.all(Radius.circular(10)),
    );
  }