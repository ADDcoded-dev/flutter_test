import 'package:flutter/material.dart';
import 'package:flutter_node/screens/client_page_screen.dart';
import 'package:flutter_node/screens/login_page_screen.dart';
import 'package:flutter_node/service/api.dart';

import 'screens/create_client_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter node',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder(
        future: Api.getModelObject(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return LoginPageScreen();
          } else {
            return CreateClientPage();
          }
        },
      ),
    );
  }
}
