import 'package:flutter/material.dart';
import 'package:flutter_node/constant.dart';

import '../widgets/navbarBottom.dart';

class ClientPageScreen extends StatefulWidget {
  const ClientPageScreen({super.key});

  @override
  State<ClientPageScreen> createState() => _ClientPageScreenState();
}

class _ClientPageScreenState extends State<ClientPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(Icons.menu,color: Colors.white,),
        title: Text("Clients",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [Icon(Icons.search,color: Colors.white,)],
      ),
      body: Stack(
        children: [
          Center(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListTile(
                    title: Text("Ajouter un client"),
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(child: Icon(Icons.person_add)),
                    )),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: ListTile(
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: primaryColor),
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          title: Row(
                            children: [
                              Text(
                                "name",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.grey),
                              )
                            ],
                          ),
                          subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "(799)576-2140",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "joesusanne@gmail.com",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ]),
                        ),
                      );
                    }),
              )
            ],
          )),
         const  Positioned(
            bottom: 0,
            child: NavBarBottom(),
          )
       ],
      ),
    );
  }
}
