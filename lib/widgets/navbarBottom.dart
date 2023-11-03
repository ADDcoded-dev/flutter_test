import 'package:flutter/material.dart';
import 'package:flutter_node/constant.dart';

class NavBarBottom extends StatelessWidget {
  const NavBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )),
      height: 65,
      width: MediaQuery.of(context).size.width,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            children: [Icon(Icons.home), Text("Home")],
          ),
          Column(
            children: [Icon(Icons.message), Text("Messagerie")],
          ),
          Column(
            children: [Icon(Icons.favorite), Text("Favori")],
          ),
          Column(
            children: [
              Icon(
                Icons.people_alt,
                color: primaryColor,
              ),
              Text(
                "Clients",
                style: TextStyle(color: primaryColor),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
