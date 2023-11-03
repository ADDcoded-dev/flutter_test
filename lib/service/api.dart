import 'dart:convert';

import 'package:flutter_node/model/all_payement_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';

class Api {
  static String baseUrl = "https://apitest.locationsenegal.sn/api/";

  static Future<UserModel> login({required Map data}) async {
    Uri uri = Uri.parse("${baseUrl}login");
    UserModel userData = UserModel();

    try {
      final requette = await http.post(uri, body: data);
      if (requette.statusCode == 200) {
        print("jason.................${requette.body.toString()}");
        final reponse = jsonDecode(requette.body.toString());
        userData = UserModel.fromJson(reponse);

        final prefs =
            await SharedPreferences.getInstance(); // Convertir l'objet en JSON
        await prefs.setString('modelObject', requette.body.toString());
      } else {}
    } catch (e) {
      print("error catch.3............$e");
    }

    /*final prefs = await SharedPreferences.getInstance();
     final jsonString = object.toJson(); // Convertir l'objet en JSON
     await prefs.setString('modelObject', jsonString);*/

    return userData;
  }

  // Récupération de l'objet modèle
  static Future<UserModel?> getModelObject() async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('modelObject');
    print("jsonString local............${jsonString.toString()}");

    if (jsonString != null) {
      Map<String, dynamic> map = jsonDecode(jsonString);
      return UserModel.fromJson(map); // Convertir le JSON en objet modèle
    }
    return null;
  }

  static Future<List<AllPaiementModel>> getAllPaiement({required String token}) async {
    List<AllPaiementModel> listAllPaiementModel = [];
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'token': '$token',
    };

    Map<String, dynamic> requestData = {
      'idUser': 36,
    };

    dynamic response = await http.post(
      Uri.parse("${baseUrl}allpaiment"),
      headers: headers,
      body: jsonEncode(requestData),
    );

    response.forEach((element) =>
        listAllPaiementModel.add(AllPaiementModel.fromJson(element)));

    if (response.statusCode == 200) {
      // La requête a réussi
      print('Réponse all paiement : ${response.body}');
    } else {
      // La requête a échoué
      print(
          'Échec de la requête avec le code d\'erreur all paiement : ${response.statusCode}');
    }

    return listAllPaiementModel;
  }
}
