import 'package:flutter/material.dart';
import 'package:flutter_node/constant.dart';

class ButtonWidget extends StatefulWidget {
  final Function()? ontap;
  final String title;
  const ButtonWidget({super.key, this.ontap,required this.title});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 35,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}


class ButtonGoogleWidget extends StatefulWidget {
  final Function()? ontap;
  final String title;
  const ButtonGoogleWidget({super.key, this.ontap,required this.title});

  @override
  State<ButtonGoogleWidget> createState() => _ButtonGoogleWidgetState();
}

class _ButtonGoogleWidgetState extends State<ButtonGoogleWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 35,
        decoration: BoxDecoration(
            color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.language),
              SizedBox(width: 8,),
              Text(widget.title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
