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

    print(url);
    print(myUri);

    await http.get(url).then((response) {
      print(response.statusCode);
      print(response.body);

      print(jsonDecode(response.body));

      Map<String, dynamic> resultPerson = jsonDecode(response.body);

      personModel = PersonModel.fromJson(resultPerson["data"]);
      print(personModel);
      print(personModel.id);
    }).catchError((err) {
      print(err);
    });

    print("Hola desde mi API");

    print(personModel);

    print(personModel.id);

    return personModel;
  }
}
