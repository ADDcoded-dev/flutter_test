import 'package:flutter/material.dart';
import 'package:flutter_node/constant.dart';
import 'package:flutter_node/model/all_payement_model.dart';
import 'package:flutter_node/model/user_model.dart';
import 'package:flutter_node/screens/client_page_screen.dart';
import 'package:flutter_node/service/api.dart';
import 'package:flutter_node/widgets/buttonWidget.dart';

import '../widgets/textFieldWidget.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Center(
            child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.security,
              size: 50,
              color: primaryColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Bienvenu",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Entrez vos identifiants et continuez",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldWidget(
              titre: "Email",
              textEditingController: email,
            ),
            SizedBox(
              height: 10,
            ),
            TextFieldWidget(
              titre: "Mot de passe",
              textEditingController: password,
              iconSuffix: Icon(Icons.lock),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [Checkbox(value: true,onChanged: (val){

                  },activeColor: primaryColor,), Text("Se souvenir de moi")],
                ),
                Text('Mot de passe oublier?')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            if (isLoading)
              Center(
                child: CircularProgressIndicator(),
              ),
            SizedBox(
              height: 10,
            ),
            ButtonWidget(
              ontap: () async {
                setState(() {
                  isLoading = true;
                });
                UserModel userModel = await Api.login(data: {
                  "email": "kamgaline@gmail.com", //email.text.trim,
                  "password": "line1234", //password.text.trim,
                });
                //List<AllPaiementModel> allPaiementModel = await Api.getAllPaiement(token: userModel.token!);
                if (userModel.user != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClientPageScreen()));
                }

                setState(() {
                  isLoading = false;
                });
              },
              title: "Connexion",
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Vous n'avez pas de compte?"),
                Text(
                  " inscrivez vous",
                  style: TextStyle(color: primaryColor),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  height: 2,
                  color: Colors.grey,
                  width: 100,
                ),
                Text(" Continuez avec "),
                Container(
                  height: 2,
                  color: Colors.grey,
                  width: 100,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            ButtonGoogleWidget(
              title: "Google",
            ),
          ]),
        )),
      ),
    );
  }
}
