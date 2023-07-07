import 'dart:convert';

import 'package:first_app_fujitsu/modules/api/models/person_model.dart';

import 'package:http/http.dart' as http;

class ServicesReqResApi {
  PersonModel personModel = PersonModel();
  Future<PersonModel> getReqResService() async {
    //Muchas Personas
    Uri myUri = Uri(
      scheme: 'https',
      host: 'reqres.in',
      path: '/api/users',
      queryParameters: {'page': '2'},
    );

    //Una persona
    var url = Uri.parse("https://reqres.in/api/users/2");

    await http.get(url).then((response) {
      Map<String, dynamic> resultPerson = jsonDecode(response.body);

      personModel = PersonModel.fromJson(resultPerson["data"]);
    }).catchError((err) {
      print(err);
    });

    // await http.put(url).then((value) => print);

    // await http.post(url).then((value) => print);

    return personModel;
  }
}
