import 'package:flutter/material.dart';

const Color primaryColor = Colors.blueAccent;

OutlineInputBorder myinputborder(){ //return type is OutlineInputBorder
  return const OutlineInputBorder( //Outline border type for TextFeild
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide(
        color: primaryColor,
        width: 3,
      )
  );
}

OutlineInputBorder myfocusborder(){
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
        color:Colors.greenAccent,
        width: 3,
      )
  );
}