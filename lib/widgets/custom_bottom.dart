import 'package:flutter/material.dart';
import 'package:notes/widgets/constant.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key, this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaaryryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        height: 55,
        width: MediaQuery.of(context).size.width,
        child:const Center(child:  Text('Add Note',style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}