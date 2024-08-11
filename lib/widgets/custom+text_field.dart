import 'package:flutter/material.dart';
import 'package:notes/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: KPrimaaryryColor,
      decoration: InputDecoration(
        hintText: 'title of note',
        hintStyle:const TextStyle(color: KPrimaaryryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaaryryColor),
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