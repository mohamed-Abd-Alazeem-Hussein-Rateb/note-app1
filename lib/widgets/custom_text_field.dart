import 'package:flutter/material.dart';
import 'package:notes/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxline = 1, this.onSaved,this.onChanged});
 final String hint;
 final int maxline;
  final void Function(String?)? onSaved;
 final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onChanged:onChanged ,
      validator: (value) {
        if (value?.isEmpty ??true) {
          return 'Thes field is requierd';
        }else{
          return null;
        }
      },
      onSaved: onSaved,
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